import 'package:flutter/material.dart';
import 'package:geolocator/geolocator.dart';
import 'package:get/get.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class currentlocation extends StatefulWidget {
  const currentlocation({Key? key}) : super(key: key);

  @override
  State<currentlocation> createState() => _currentlocationState();
}

class _currentlocationState extends State<currentlocation> {

  late GoogleMapController googleMapController;
  static const CameraPosition initialCameraPosition = CameraPosition(target: LatLng(23.8365179,91.1210801),zoom:7);
  Set<Marker> markers = {};
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          backgroundColor:  Color(0xFFe6ba95),
          title: Text('My Location',style: TextStyle(color: Colors.black,fontSize: 30.0,fontWeight: FontWeight.bold)),centerTitle: true),


      body: GoogleMap(initialCameraPosition: initialCameraPosition,
        markers: markers,
        zoomControlsEnabled: false,
        mapType: MapType.normal,
        onMapCreated: (GoogleMapController controller) {
          googleMapController = controller;
        },),
      floatingActionButton: FloatingActionButton.extended(onPressed: () async {
        Position position = await _determinePosition();
        googleMapController.animateCamera(
            CameraUpdate.newCameraPosition(
                CameraPosition(
                    target: LatLng(position.latitude, position.longitude),zoom: 15)));
        markers.clear();
        markers.add(Marker(markerId: MarkerId('CurrentLocation'),position: LatLng(position.latitude, position.longitude)));
        setState(() {

        });


      }, label: Text('Current Location'),
        icon: Icon(Icons.location_history),
      ),

    );
  }
    Future<Position> _determinePosition() async{
      bool serviceEnabled;
      LocationPermission permission;
      serviceEnabled = await Geolocator.isLocationServiceEnabled();
      if(!serviceEnabled){
        return Future.error('Location services are disable');
      }
      permission = await Geolocator.checkPermission();
      if(permission ==LocationPermission.denied ){
        permission = await Geolocator.requestPermission();
        if(permission ==LocationPermission.denied){
          return Future.error('Location permission dennied');
        }
      }
      if(permission == LocationPermission.deniedForever){
        return Future.error('Location permission are permanently denied');
      }
      Position position = await Geolocator.getCurrentPosition();
      return position;
    }

}
