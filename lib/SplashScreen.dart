import 'dart:async';
import 'package:emergency_service/Auth/registration.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:lottie/lottie.dart';
import 'Dashboard/EmergencyService.dart';

class splashscreen extends StatefulWidget {
  const splashscreen({Key? key}) : super(key: key);

  @override
  _splashscreenState createState() => _splashscreenState();
}

class _splashscreenState extends State<splashscreen> {
  @override
  void initState() {
    super.initState();
    Timer(Duration(seconds:4),
            () {
          Navigator.of(context).pushReplacement(
              MaterialPageRoute(builder: (context) => registration()));
    }
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: double.infinity,
        width: double.infinity,
        decoration: BoxDecoration(
            gradient: LinearGradient(
                begin: Alignment.topRight,
                end: Alignment.bottomLeft,
                colors:[
                  Color(0xFFfcffe7),
                  Color(0xFFccff99),
                ] )
        ),
        child: Column(
          children: [
            SizedBox(height: 50,),
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage('images/E_logo.png'),
            ),
            SizedBox(height: 100,),
            Lottie.asset('images/loading.json',height: 180),
            SizedBox(height: 160,),
            Text('From ',style: GoogleFonts.fresca(fontSize:27)),
            Text('POP',style: GoogleFonts.acme(fontSize:37)),



            //  Text('From \n')
          ],
        ),
      ),

    );
  }
}