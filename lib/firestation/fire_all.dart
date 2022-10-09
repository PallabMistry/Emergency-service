import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class fire_dhaka extends StatefulWidget {
  const fire_dhaka({Key? key}) : super(key: key);

  @override
  State<fire_dhaka> createState() => _fire_dhakaState();
}

class _fire_dhakaState extends State<fire_dhaka> {
  List _dhaka = [];
  Future<void> readJsondhaka() async{
    final String response = await rootBundle.loadString('jsons/fire.json');
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
            Center(child: Text('Fire Station of Dhaka', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
            SizedBox(height: 25.h,),
           ElevatedButton(onPressed: readJsondhaka, child: Text('Dhaka Fire Station')),
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
                            IconButton(onPressed: () {}, icon: Icon(Icons.add_location_outlined,color: Colors.black,)),
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
class fire_mymensingh extends StatefulWidget {
  const fire_mymensingh({Key? key}) : super(key: key);

  @override
  State<fire_mymensingh> createState() => _fire_mymensinghState();
}

class _fire_mymensinghState extends State<fire_mymensingh> {
  List _mymensingh = [];
  Future<void> readJsonmymensingh() async{
    final String response = await rootBundle.loadString('jsons/fire.json');
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
              Center(child: Text('Fire Station of Mymensingh', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonmymensingh, child: Text('Mymensingh Fire Station')),
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
class fire_rajshahi extends StatefulWidget {
  const fire_rajshahi({Key? key}) : super(key: key);

  @override
  State<fire_rajshahi> createState() => _fire_rajshahiState();
}

class _fire_rajshahiState extends State<fire_rajshahi> {
  List _rajshahi = [];
  Future<void> readJsonrajshahi() async{
    final String response = await rootBundle.loadString('jsons/fire.json');
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
              Center(child: Text('Fire Station of Rajshahi', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonrajshahi, child: Text('Rajshahi Fire Station')),
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
class fire_barishal extends StatefulWidget {
  const fire_barishal({Key? key}) : super(key: key);

  @override
  State<fire_barishal> createState() => _fire_barishalState();
}

class _fire_barishalState extends State<fire_barishal> {
  List _barishal = [];
  Future<void> readJsonbarishal() async{
    final String response = await rootBundle.loadString('jsons/fire.json');
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
              Center(child: Text('Fire Station of Barishal', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonbarishal, child: Text('Barishal Fire Station')),
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
class fire_chittagong extends StatefulWidget {
  const fire_chittagong({Key? key}) : super(key: key);

  @override
  State<fire_chittagong> createState() => _fire_chittagongState();
}

class _fire_chittagongState extends State<fire_chittagong> {
  List _chittagong = [];
  Future<void> readJsonchittagong() async{
    final String response = await rootBundle.loadString('jsons/fire.json');
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
              Center(child: Text('Fire Station of Chittagong', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonchittagong, child: Text('Chittagong Fire Station')),
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
class fire_khulna extends StatefulWidget {
  const fire_khulna({Key? key}) : super(key: key);

  @override
  State<fire_khulna> createState() => _fire_khulnaState();
}

class _fire_khulnaState extends State<fire_khulna> {
  List _khulna = [];
  Future<void> readJsonkhulna() async{
    final String response = await rootBundle.loadString('jsons/fire.json');
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
              Center(child: Text('Fire Station of Khulna', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonkhulna, child: Text('Khulna Fire Station')),
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
class fire_sylhet extends StatefulWidget {
  const fire_sylhet({Key? key}) : super(key: key);

  @override
  State<fire_sylhet> createState() => _fire_sylhetState();
}

class _fire_sylhetState extends State<fire_sylhet> {
  List _sylhet = [];
  Future<void> readJsonsylhet() async{
    final String response = await rootBundle.loadString('jsons/fire.json');
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
              Center(child: Text('Fire Station of Sylhet', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonsylhet, child: Text('Sylhet Fire Station')),
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
class fire_rangpur extends StatefulWidget {
  const fire_rangpur({Key? key}) : super(key: key);

  @override
  State<fire_rangpur> createState() => _fire_rangpurState();
}

class _fire_rangpurState extends State<fire_rangpur> {
  List _rangpur = [];
  Future<void> readJsonrangpur() async{
    final String response = await rootBundle.loadString('jsons/fire.json');
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
              Center(child: Text('Fire Station of Rangpur', style: TextStyle(fontSize: 26.sp, color: Colors.black,fontWeight: FontWeight.bold,),)),
              SizedBox(height: 25.h,),
              ElevatedButton(onPressed: readJsonrangpur, child: Text('Rangpur Fire Station')),
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
