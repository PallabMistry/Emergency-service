import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class ambulance_dhaka extends StatefulWidget {
  const ambulance_dhaka({Key? key}) : super(key: key);

  @override
  State<ambulance_dhaka> createState() => _ambulance_dhakaState();
}

class _ambulance_dhakaState extends State<ambulance_dhaka> {
  List _dhaka = [];
  Future<void> readJsondhaka() async{
    final String response = await rootBundle.loadString('jsons/ambulance.json');
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
              Center(child: Text('Ambulance of Dhaka', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsondhaka, child: Text('Ambulance of Dhaka')),
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
class ambulance_mymensingh extends StatefulWidget {
  const ambulance_mymensingh({Key? key}) : super(key: key);

  @override
  State<ambulance_mymensingh> createState() => _ambulance_mymensinghState();
}

class _ambulance_mymensinghState extends State<ambulance_mymensingh> {
  List _mymensingh = [];
  Future<void> readJsonmymensingh() async{
    final String response = await rootBundle.loadString('jsons/ambulance.json');
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
              Center(child: Text('Ambulance of Mymensingh', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonmymensingh, child: Text('Ambulance of Mymensingh')),
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
class ambulance_rajshahi extends StatefulWidget {
  const ambulance_rajshahi({Key? key}) : super(key: key);

  @override
  State<ambulance_rajshahi> createState() => _ambulance_rajshahiState();
}

class _ambulance_rajshahiState extends State<ambulance_rajshahi> {
  List _rajshahi = [];
  Future<void> readJsonrajshahi() async{
    final String response = await rootBundle.loadString('jsons/ambulance.json');
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
              Center(child: Text('Ambulance of Rajshahi', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonrajshahi, child: Text('Ambulance of Rajshahi')),
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
class ambulance_barishal extends StatefulWidget {
  const ambulance_barishal({Key? key}) : super(key: key);

  @override
  State<ambulance_barishal> createState() => _ambulance_barishalState();
}

class _ambulance_barishalState extends State<ambulance_barishal> {
  List _barishal = [];
  Future<void> readJsonbarishal() async{
    final String response = await rootBundle.loadString('jsons/ambulance.json');
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
              Center(child: Text('Ambulance of Barishal', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonbarishal, child: Text('ambulance of Barisha')),
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
                            ],
                          ),),);
                    })
                ),
              )//:Container(),
            ],),)
    );
  }
}
class ambulance_chittagong extends StatefulWidget {
  const ambulance_chittagong({Key? key}) : super(key: key);

  @override
  State<ambulance_chittagong> createState() => _ambulance_chittagongState();
}

class _ambulance_chittagongState extends State<ambulance_chittagong> {
  List _chittagong = [];
  Future<void> readJsonchittagong() async{
    final String response = await rootBundle.loadString('jsons/ambulance.json');
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
              Center(child: Text('Ambulance of Chittagong', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonchittagong, child: Text('Ambulance of Chittagong')),
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
class ambulance_khulna extends StatefulWidget {
  const ambulance_khulna({Key? key}) : super(key: key);

  @override
  State<ambulance_khulna> createState() => _ambulance_khulnaState();
}

class _ambulance_khulnaState extends State<ambulance_khulna> {
  List _khulna = [];
  Future<void> readJsonkhulna() async{
    final String response = await rootBundle.loadString('jsons/ambulance.json');
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
              Center(child: Text('Ambulance of Khulna', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonkhulna, child: Text('Ambulance of Khulna')),
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
class ambulance_sylhet extends StatefulWidget {
  const ambulance_sylhet({Key? key}) : super(key: key);

  @override
  State<ambulance_sylhet> createState() => _ambulance_sylhetState();
}

class _ambulance_sylhetState extends State<ambulance_sylhet> {
  List _sylhet = [];
  Future<void> readJsonsylhet() async{
    final String response = await rootBundle.loadString('jsons/ambulance.json');
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
              Center(child: Text('Ambulaance of Sylhet', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonsylhet, child: Text('Ambulance of Sylhet')),
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
class ambulance_rangpur extends StatefulWidget {
  const ambulance_rangpur({Key? key}) : super(key: key);

  @override
  State<ambulance_rangpur> createState() => _ambulance_rangpurState();
}

class _ambulance_rangpurState extends State<ambulance_rangpur> {
  List _rangpur = [];
  Future<void> readJsonrangpur() async{
    final String response = await rootBundle.loadString('jsons/ambulance.json');
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
              Center(child: Text('Ambulance of Rangpur', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonrangpur, child: Text('ambulance of Rangpur')),
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
                            ],
                          ),),);
                    })
                ),
              )//:Container(),
            ],),)
    );
  }
}

