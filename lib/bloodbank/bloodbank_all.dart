import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class bloodbank_dhaka extends StatefulWidget {
  const bloodbank_dhaka({Key? key}) : super(key: key);

  @override
  State<bloodbank_dhaka> createState() => _bloodbank_dhakaState();
}

class _bloodbank_dhakaState extends State<bloodbank_dhaka> {
  List _dhaka = [];
  Future<void> readJsondhaka() async{
    final String response = await rootBundle.loadString('jsons/bloodbank.json');
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
              Center(child: Text('Blood Bank of Dhaka', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsondhaka, child: Text('Blood Bank of Dhaka')),
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
class bloodbank_mymensingh extends StatefulWidget {
  const bloodbank_mymensingh({Key? key}) : super(key: key);

  @override
  State<bloodbank_mymensingh> createState() => _bloodbank_mymensinghState();
}

class _bloodbank_mymensinghState extends State<bloodbank_mymensingh> {
  List _mymensingh = [];
  Future<void> readJsonmymensingh() async{
    final String response = await rootBundle.loadString('jsons/bloodbank.json');
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
              Center(child: Text('Blood Bank of Mymensingh', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonmymensingh, child: Text('Blood Bank of Mymensingh')),
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
class bloodbank_rajshahi extends StatefulWidget {
  const bloodbank_rajshahi({Key? key}) : super(key: key);

  @override
  State<bloodbank_rajshahi> createState() => _bloodbank_rajshahiState();
}

class _bloodbank_rajshahiState extends State<bloodbank_rajshahi> {
  List _rajshahi = [];
  Future<void> readJsonrajshahi() async{
    final String response = await rootBundle.loadString('jsons/bloodbank.json');
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
              Center(child: Text('Blood Bank of Rajshahi', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonrajshahi, child: Text('Blood Bank of Rajshahi')),
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
class bloodbank_barishal extends StatefulWidget {
  const bloodbank_barishal({Key? key}) : super(key: key);

  @override
  State<bloodbank_barishal> createState() => _bloodbank_barishalState();
}

class _bloodbank_barishalState extends State<bloodbank_barishal> {
  List _barishal = [];
  Future<void> readJsonbarishal() async{
    final String response = await rootBundle.loadString('jsons/bloodbank.json');
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
              Center(child: Text('Blood Bank of Barishal', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonbarishal, child: Text('Blood Bank of Barisha')),
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
class bloodbank_chittagong extends StatefulWidget {
  const bloodbank_chittagong({Key? key}) : super(key: key);

  @override
  State<bloodbank_chittagong> createState() => _bloodbank_chittagongState();
}

class _bloodbank_chittagongState extends State<bloodbank_chittagong> {
  List _chittagong = [];
  Future<void> readJsonchittagong() async{
    final String response = await rootBundle.loadString('jsons/bloodbank.json');
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
              Center(child: Text('Blood Bank of Chittagong', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonchittagong, child: Text('Blood Bank of Chittagong')),
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
class bloodbank_khulna extends StatefulWidget {
  const bloodbank_khulna({Key? key}) : super(key: key);

  @override
  State<bloodbank_khulna> createState() => _bloodbank_khulnaState();
}

class _bloodbank_khulnaState extends State<bloodbank_khulna> {
  List _khulna = [];
  Future<void> readJsonkhulna() async{
    final String response = await rootBundle.loadString('jsons/bloodbank.json');
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
              Center(child: Text('Blood Bank of Khulna', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonkhulna, child: Text('Blood Bank of Khulna')),
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
class bloodbank_sylhet extends StatefulWidget {
  const bloodbank_sylhet({Key? key}) : super(key: key);

  @override
  State<bloodbank_sylhet> createState() => _bloodbank_sylhetState();
}

class _bloodbank_sylhetState extends State<bloodbank_sylhet> {
  List _sylhet = [];
  Future<void> readJsonsylhet() async{
    final String response = await rootBundle.loadString('jsons/bloodbank.json');
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
              Center(child: Text('Blood Bank of Sylhet', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonsylhet, child: Text('Blood Bank of Sylhet')),
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
class bloodbank_rangpur extends StatefulWidget {
  const bloodbank_rangpur({Key? key}) : super(key: key);

  @override
  State<bloodbank_rangpur> createState() => _bloodbank_rangpurState();
}

class _bloodbank_rangpurState extends State<bloodbank_rangpur> {
  List _rangpur = [];
  Future<void> readJsonrangpur() async{
    final String response = await rootBundle.loadString('jsons/bloodbank.json');
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
              Center(child: Text('Blood Bank of Rangpur', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonrangpur, child: Text('Blood Bank of Rangpur')),
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

