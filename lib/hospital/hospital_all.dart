import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class hospital_dhaka extends StatefulWidget {
  const hospital_dhaka({Key? key}) : super(key: key);

  @override
  State<hospital_dhaka> createState() => _hospital_dhakaState();
}

class _hospital_dhakaState extends State<hospital_dhaka> {
  List _dhaka = [];
  Future<void> readJsondhaka() async{
    final String response = await rootBundle.loadString('jsons/hospital.json');
    final data = await json.decode(response);
    setState(() {
      _dhaka = data["dhaka"];
    });
  }
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
              Center(child: Text('Hospital of Dhaka', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsondhaka, child: Text('Hospital of Dhaka')),
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
                              IconButton(onPressed: () {
                                // GoogleMap(
                                //     mapType: MapType.normal,
                                //     initialCameraPosition: CameraPosition(
                                //       target:  LatLng(_dhaka[index]["location1"], _dhaka[index]["location2"]),//23.839915,90.2472997_dhaka[index]["location"]
                                //       zoom: 17,
                                //     )
                                // ) ;
                               // Navigator.pushNamed(context, "/location");
                              }, icon: Icon(Icons.add_location_outlined,color: Colors.black,)),
                              IconButton(onPressed: () async{launch(_dhaka[index]["website"]);}, icon: Icon(Icons.open_in_browser,color: Colors.black,)),
                            ],
                          ),),);
                    })
                ),
              )//:Container(),
            ],),)
    );
  }
}
//----------------------------------------------------------------------
class hospital_mymensingh extends StatefulWidget {
  const hospital_mymensingh({Key? key}) : super(key: key);

  @override
  State<hospital_mymensingh> createState() => _hospital_mymensinghState();
}

class _hospital_mymensinghState extends State<hospital_mymensingh> {
  List _mymensingh = [];
  Future<void> readJsonmymensingh() async{
    final String response = await rootBundle.loadString('jsons/hospital.json');
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
              Center(child: Text('Hospital of Mymensingh', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonmymensingh, child: Text('Hospital of Mymensingh')),
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
class hospital_rajshahi extends StatefulWidget {
  const hospital_rajshahi({Key? key}) : super(key: key);

  @override
  State<hospital_rajshahi> createState() => _hospital_rajshahiState();
}

class _hospital_rajshahiState extends State<hospital_rajshahi> {
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
        appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
        ),
        body:Padding(
          padding: EdgeInsets.all(11.r),
          child: Column(
            children: [
              SizedBox(height: 5.h,),
              Center(child: Text('Hospital of Rajshahi', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonrajshahi, child: Text('Hospital of Rajshahi')),
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
class hospital_barishal extends StatefulWidget {
  const hospital_barishal({Key? key}) : super(key: key);

  @override
  State<hospital_barishal> createState() => _hospital_barishalState();
}

class _hospital_barishalState extends State<hospital_barishal> {
  List _barishal = [];
  Future<void> readJsonbarishal() async{
    final String response = await rootBundle.loadString('jsons/hospital.json');
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
              Center(child: Text('Hospital of Barishal', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonbarishal, child: Text('Hospital of Barisha')),
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
class hospital_chittagong extends StatefulWidget {
  const hospital_chittagong({Key? key}) : super(key: key);

  @override
  State<hospital_chittagong> createState() => _hospital_chittagongState();
}

class _hospital_chittagongState extends State<hospital_chittagong> {
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
              Center(child: Text('Hospital of Chittagong', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonchittagong, child: Text('Hospital of Chittagong')),
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
class hospital_khulna extends StatefulWidget {
  const hospital_khulna({Key? key}) : super(key: key);

  @override
  State<hospital_khulna> createState() => _hospital_khulnaState();
}

class _hospital_khulnaState extends State<hospital_khulna> {
  List _khulna = [];
  Future<void> readJsonkhulna() async{
    final String response = await rootBundle.loadString('jsons/hospital.json');
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
              Center(child: Text('Hospital of Khulna', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonkhulna, child: Text('Hospital of Khulna')),
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
class hospital_sylhet extends StatefulWidget {
  const hospital_sylhet({Key? key}) : super(key: key);

  @override
  State<hospital_sylhet> createState() => _hospital_sylhetState();
}

class _hospital_sylhetState extends State<hospital_sylhet> {
  List _sylhet = [];
  Future<void> readJsonsylhet() async{
    final String response = await rootBundle.loadString('jsons/hospital.json');
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
              Center(child: Text('Hospital of Sylhet', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonsylhet, child: Text('Hospital of Sylhet')),
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
class hospital_rangpur extends StatefulWidget {
  const hospital_rangpur({Key? key}) : super(key: key);

  @override
  State<hospital_rangpur> createState() => _hospital_rangpurState();
}

class _hospital_rangpurState extends State<hospital_rangpur> {
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
              Center(child: Text('Hospital of Rangpur', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonrangpur, child: Text('Hospital of Rangpur')),
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

