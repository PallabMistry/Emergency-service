import 'dart:convert';
import 'package:emergency_service/Google_map.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class police_dhaka extends StatefulWidget {
  const police_dhaka({Key? key}) : super(key: key);

  @override
  State<police_dhaka> createState() => _police_dhakaState();
}

class _police_dhakaState extends State<police_dhaka> {
  List _dhaka = [];
  Future<void> readJsondhaka() async{
    final String response = await rootBundle.loadString('jsons/police.json');
    final data = await json.decode(response);
    setState(() {
      _dhaka = data["dhaka"];
    });
  }
  // List _DhakaMetropolitanPolice = [];
  // Future<void> readJsonDhakaMetropolitanPolice() async{
  //   final String response = await rootBundle.loadString('jsons/police.json');
  //   final data = await json.decode(response);
  //   setState(() {
  //     _DhakaMetropolitanPolice = data["DhakaMetropolitanPolice"];
  //   });
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor:Color(0xFFEBD8C3),
          title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),),
          centerTitle: true,
        ),
        body:Padding(
          padding: EdgeInsets.all(11.r),
          child: Column(
            children: [
              SizedBox(height: 5.h,),
              Center(child: Text('Police Station of Dhaka', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsondhaka, child: Text('Dhaka Police Station')),
              // _dhaka.isNotEmpty
              // ?
              Expanded(
                child: ListView.builder(
                    itemCount: _dhaka.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        color: Color(0xFFe6ba95),
                        margin: EdgeInsets.all(10.r),
                        child: ListTile(
                          title: Text (_dhaka[index]["name"], style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                          trailing:Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber(_dhaka[index]["number"]);}, icon: Icon(Icons.call,color: Colors.black,)),
                              IconButton(onPressed: () { Googlemap.openMap(23.9146674,90.2142129);
                                // GoogleMap(,
                                //     mapType: MapType.normal,
                                //     initialCameraPosition: CameraPosition(
                                //       target:  LatLng(_dhaka[index]["location1"], _dhaka[index]["location2"]),//23.839915,90.2472997_dhaka[index]["location"]
                                //       zoom: 17,
                                //     )
                                // ) ;
                                //Navigator.pushNamed(context, "/location");
                                }, icon: Icon(Icons.add_location_outlined,color: Colors.black,)),
                              IconButton(onPressed: () async{launch(_dhaka[index]["website"]);}, icon: Icon(Icons.open_in_browser,color: Colors.black,)),

                            ],
                          ),),);
                    })
                ),
              )//:Container(),
            ],),



        )
    );
  }
}
//----------------------------------------------------------------------
class police_mymensingh extends StatefulWidget {
  const police_mymensingh({Key? key}) : super(key: key);

  @override
  State<police_mymensingh> createState() => _police_mymensinghState();
}

class _police_mymensinghState extends State<police_mymensingh> {
  List _mymensingh = [];
  Future<void> readJsonmymensingh() async{
    final String response = await rootBundle.loadString('jsons/police.json');
    final data = await json.decode(response);
    setState(() {
      _mymensingh = data["mymensingh"];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
        ),
        body:Padding(
          padding: EdgeInsets.all(11.r),
          child: Column(
            children: [
              SizedBox(height: 5.h,),
              Center(child: Text('Police Station of Mymensingh', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonmymensingh, child: Text('Mymensingh Police Station')),
              // _dhaka.isNotEmpty
              // ?
              Expanded(
                child: ListView.builder(
                    itemCount: _mymensingh.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        color: Color(0xFFe6ba95),
                        margin: EdgeInsets.all(10.r),
                        child: ListTile(
                          title: Text (_mymensingh[index]["name"], style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                          trailing:Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber(_mymensingh[index]["number"]);}, icon: Icon(Icons.call,color: Colors.black,)),
                              IconButton(onPressed: () {}, icon: Icon(Icons.add_location_outlined,color: Colors.black,)),
                              IconButton(onPressed: () async{launch(_mymensingh[index]["website"]);}, icon: Icon(Icons.open_in_browser,color: Colors.black,)),

                            ],
                          ),),);
                    })
                ),
              )//:Container(),
            ],),)
    );
  }
}
//---------------------------------------------------------------------
class police_rajshahi extends StatefulWidget {
  const police_rajshahi({Key? key}) : super(key: key);

  @override
  State<police_rajshahi> createState() => _police_rajshahiState();
}

class _police_rajshahiState extends State<police_rajshahi> {
  List _rajshahi = [];
  Future<void> readJsonrajshahi() async{
    final String response = await rootBundle.loadString('jsons/police.json');
    final data = await json.decode(response);
    setState(() {
      _rajshahi = data["rajshahi"];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Informations',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
        ),
        body:Padding(
          padding: EdgeInsets.all(11.r),
          child: Column(
            children: [
              SizedBox(height: 5.h,),
              Center(child: Text('Police Station of Rajshahi', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonrajshahi, child: Text('Rajshahi Police Station')),
              // _dhaka.isNotEmpty
              // ?
              Expanded(
                child: ListView.builder(
                    itemCount: _rajshahi.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        color: Color(0xFFe6ba95),
                        margin: EdgeInsets.all(10.r),
                        child: ListTile(
                          title: Text (_rajshahi[index]["name"], style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                          trailing:Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber(_rajshahi[index]["number"]);}, icon: Icon(Icons.call,color: Colors.black,)),
                              IconButton(onPressed: () {}, icon: Icon(Icons.add_location_outlined,color: Colors.black,)),
                              IconButton(onPressed: () async{launch(_rajshahi[index]["website"]);}, icon: Icon(Icons.open_in_browser,color: Colors.black,)),

                            ],
                          ),),);
                    })
                ),
              )//:Container(),
            ],),)
    );
  }
}
//--------------------------------------------------
class police_barishal extends StatefulWidget {
  const police_barishal({Key? key}) : super(key: key);

  @override
  State<police_barishal> createState() => _police_barishalState();
}

class _police_barishalState extends State<police_barishal> {
  List _barishal = [];
  Future<void> readJsonbarishal() async{
    final String response = await rootBundle.loadString('jsons/police.json');
    final data = await json.decode(response);
    setState(() {
      _barishal = data["barishal"];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
        ),
        body:Padding(
          padding: EdgeInsets.all(11.r),
          child: Column(
            children: [
              SizedBox(height: 5.h,),
              Center(child: Text('Police Station of Barishal', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonbarishal, child: Text('Barishal Police Station')),
              // _dhaka.isNotEmpty
              // ?
              Expanded(
                child: ListView.builder(
                    itemCount: _barishal.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        color: Color(0xFFe6ba95),
                        margin: EdgeInsets.all(10.r),
                        child: ListTile(
                          title: Text (_barishal[index]["name"], style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                          trailing:Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber(_barishal[index]["number"]);}, icon: Icon(Icons.call,color: Colors.black,)),
                              IconButton(onPressed: () {}, icon: Icon(Icons.add_location_outlined,color: Colors.black,)),
                              IconButton(onPressed: () async{launch(_barishal[index]["website"]);}, icon: Icon(Icons.open_in_browser,color: Colors.black,)),

                            ],
                          ),),);
                    })
                ),
              )//:Container(),
            ],),)
    );
  }
}
class police_chittagong extends StatefulWidget {
  const police_chittagong({Key? key}) : super(key: key);

  @override
  State<police_chittagong> createState() => _police_chittagongState();
}

class _police_chittagongState extends State<police_chittagong> {
  List _chittagong = [];
  Future<void> readJsonchittagong() async{
    final String response = await rootBundle.loadString('jsons/police.json');
    final data = await json.decode(response);
    setState(() {
      _chittagong = data["chittagong"];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
        ),
        body:Padding(
          padding: EdgeInsets.all(11.r),
          child: Column(
            children: [
              SizedBox(height: 5.h,),
              Center(child: Text('Police Station of Chittagong', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonchittagong, child: Text('Chittagong Police Station')),
              // _dhaka.isNotEmpty
              // ?
              Expanded(
                child: ListView.builder(
                    itemCount: _chittagong.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        color: Color(0xFFe6ba95),
                        margin: EdgeInsets.all(10.r),
                        child: ListTile(
                          title: Text (_chittagong[index]["name"], style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                          trailing:Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber(_chittagong[index]["number"]);}, icon: Icon(Icons.call,color: Colors.black,)),
                              IconButton(onPressed: () {}, icon: Icon(Icons.add_location_outlined,color: Colors.black,)),
                              IconButton(onPressed: () async{launch(_chittagong[index]["website"]);}, icon: Icon(Icons.open_in_browser,color: Colors.black,)),

                            ],
                          ),),);
                    })
                ),
              )//:Container(),
            ],),)
    );
  }
}
//----------------------------
class police_khulna extends StatefulWidget {
  const police_khulna({Key? key}) : super(key: key);

  @override
  State<police_khulna> createState() => _police_khulnaState();
}

class _police_khulnaState extends State<police_khulna> {
  List _khulna = [];
  Future<void> readJsonkhulna() async{
    final String response = await rootBundle.loadString('jsons/police.json');
    final data = await json.decode(response);
    setState(() {
      _khulna = data["khulna"];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
        ),
        body:Padding(
          padding: EdgeInsets.all(11.r),
          child: Column(
            children: [
              SizedBox(height: 5.h,),
              Center(child: Text('Police Station of Khulna', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonkhulna, child: Text('Khulna Police Station')),
              // _dhaka.isNotEmpty
              // ?
              Expanded(
                child: ListView.builder(
                    itemCount: _khulna.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        color: Color(0xFFe6ba95),
                        margin: EdgeInsets.all(10.r),
                        child: ListTile(
                          title: Text (_khulna[index]["name"], style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                          trailing:Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber(_khulna[index]["number"]);}, icon: Icon(Icons.call,color: Colors.black,)),
                              IconButton(onPressed: () {}, icon: Icon(Icons.add_location_outlined,color: Colors.black,)),
                              IconButton(onPressed: () async{launch(_khulna[index]["website"]);}, icon: Icon(Icons.open_in_browser,color: Colors.black,)),

                            ],
                          ),),);
                    })
                ),
              )//:Container(),
            ],),)
    );
  }
}
//===========================================
class police_sylhet extends StatefulWidget {
  const police_sylhet({Key? key}) : super(key: key);

  @override
  State<police_sylhet> createState() => _police_sylhetState();
}

class _police_sylhetState extends State<police_sylhet> {
  List _sylhet = [];
  Future<void> readJsonsylhet() async{
    final String response = await rootBundle.loadString('jsons/police.json');
    final data = await json.decode(response);
    setState(() {
      _sylhet = data["sylhet"];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
        ),
        body:Padding(
          padding: EdgeInsets.all(11.r),
          child: Column(
            children: [
              SizedBox(height: 5.h,),
              Center(child: Text('Police Station of Sylhet', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonsylhet, child: Text('Sylhet Police Station')),
              // _dhaka.isNotEmpty
              // ?
              Expanded(
                child: ListView.builder(
                    itemCount: _sylhet.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        color: Color(0xFFe6ba95),
                        margin: EdgeInsets.all(10.r),
                        child: ListTile(
                          title: Text (_sylhet[index]["name"], style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                          trailing:Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber(_sylhet[index]["number"]);}, icon: Icon(Icons.call,color: Colors.black,)),
                              IconButton(onPressed: () {}, icon: Icon(Icons.add_location_outlined,color: Colors.black,)),
                              IconButton(onPressed: () async{launch(_sylhet[index]["website"]);}, icon: Icon(Icons.open_in_browser,color: Colors.black,)),

                            ],
                          ),),);
                    })
                ),
              )//:Container(),
            ],),)
    );
  }
}
//====================================
class police_rangpur extends StatefulWidget {
  const police_rangpur({Key? key}) : super(key: key);

  @override
  State<police_rangpur> createState() => _police_rangpurState();
}

class _police_rangpurState extends State<police_rangpur> {
  List _rangpur = [];
  Future<void> readJsonrangpur() async{
    final String response = await rootBundle.loadString('jsons/police.json');
    final data = await json.decode(response);
    setState(() {
      _rangpur = data["rangpur"];
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
        ),
        body:Padding(
          padding: EdgeInsets.all(11.r),
          child: Column(
            children: [
              SizedBox(height: 5.h,),
              Center(child: Text('Police Station of Rangpur', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonrangpur, child: Text('Rangpur Police Station')),
              // _dhaka.isNotEmpty
              // ?
              Expanded(
                child: ListView.builder(
                    itemCount: _rangpur.length,
                    itemBuilder: ((context, index) {
                      return Card(
                        color: Color(0xFFe6ba95),
                        margin: EdgeInsets.all(10.r),
                        child: ListTile(
                          title: Text (_rangpur[index]["name"], style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                          trailing:Row(
                            mainAxisSize: MainAxisSize.min,
                            children: [
                              IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber(_rangpur[index]["number"]);}, icon: Icon(Icons.call,color: Colors.black,)),
                              IconButton(onPressed: () {}, icon: Icon(Icons.add_location_outlined,color: Colors.black,)),
                              IconButton(onPressed: () async{launch(_rangpur[index]["website"]);}, icon: Icon(Icons.open_in_browser,color: Colors.black,)),
                            ],
                          ),),);
                    })
                ),
              )//:Container(),
            ],),)
    );
  }
}



class location extends StatefulWidget {
  const location({Key? key}) : super(key: key);

  @override
  State<location> createState() => _locationState();
}

class _locationState extends State<location> {
  List _dhaka = [];
  Future<void> readJsondhaka() async{
    final String response = await rootBundle.loadString('jsons/police.json');
    final data = await json.decode(response);
    setState(() {
      _dhaka = data["dhaka"];
    });
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
      title: Text('Location',style: TextStyle(fontSize: 28),),
    ),
     body: GoogleMap( mapType: MapType.normal,
    initialCameraPosition: CameraPosition(
      target: LatLng(23.839915,90.2472997),
      zoom: 17,
    )
) ,
    );
  }
}

// Column(
//   children: [
//     SizedBox(height: 5.h,),
//     Center(child: Text('Dhaka Metropolitan Police Station ', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
//     SizedBox(height: 25.h,),
//     ElevatedButton(onPressed: readJsondhaka, child: Text('Dhaka Metropolitan Police')),
//     // _dhaka.isNotEmpty
//     // ?
//     Expanded(
//       child: ListView.builder(
//           itemCount: _DhakaMetropolitanPolice.length,
//           itemBuilder: ((context, index) {
//             return Card(
//               color: Color(0xFFe6ba95),
//               margin: EdgeInsets.all(10.r),
//               child: ListTile(
//                 title: Text (_DhakaMetropolitanPolice[index]["name"], style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
//                 trailing:Row(
//                   mainAxisSize: MainAxisSize.min,
//                   children: [
//                     IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber(_DhakaMetropolitanPolice[index]["number"]);}, icon: Icon(Icons.call,color: Colors.black,)),
//                     IconButton(onPressed: () {
//                       // GoogleMap(
//                       //     mapType: MapType.normal,
//                       //     initialCameraPosition: CameraPosition(
//                       //       target:  LatLng(_dhaka[index]["location1"], _dhaka[index]["location2"]),//23.839915,90.2472997_dhaka[index]["location"]
//                       //       zoom: 17,
//                       //     )
//                       // ) ;
//                       Navigator.pushNamed(context, "/location");
//                       }, icon: Icon(Icons.add_location_outlined,color: Colors.black,)),
//                     IconButton(onPressed: () async{launch(_DhakaMetropolitanPolice[index]["website"]);}, icon: Icon(Icons.open_in_browser,color: Colors.black,)),
//
//                   ],
//                 ),),);
//           })
//       ),
//     )//:Container(),
//   ],),

