import 'package:emergency_service/Auth/login.dart';
import 'package:emergency_service/police/police_all.dart';
import 'package:emergency_service/Auth/profile.dart';
import 'package:emergency_service/Auth/registration.dart';
import 'package:emergency_service/Dashboard/sp.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'Dashboard/EmergencyService.dart';

import 'SplashScreen.dart';
import 'ambulance/ambulance_all.dart';
import 'bloodbank/bloodbank_all.dart';
import 'Dashboard/currentlocation.dart';
import 'Allgrid.dart';
import 'firestation/fire_all.dart';
import 'hospital/hospital_all.dart';
import 'Dashboard/multipleSMS.dart';
//import 'logout.dart';


void main() {
  SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(360, 690),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: () {
        return MaterialApp(
          initialRoute: "/",
          routes: {
            //"/Dhaka":(context)=>Dhaka(),
            "/dhakagrid":(context)=>dhakagrid(),
            "/mymensinghgrid":(context)=>mymensinghgrid(),
            "/rajshahigrid":(context)=>rajshahigrid(),
            "/barishalgrid":(context)=>barishalgrid(),
            "/chittagonggrid":(context)=>chittagonggrid(),
            "/khulnagrid":(context)=>khulnagrid(),
            "/sylhetgrid":(context)=>sylhetgrid(),
            "/rangpurgrid":(context)=>rangpurgrid(),
            "/MultipleSMS":(context)=>MultipleSMS(),
            "/EmergencyService":(context)=>EmergencyService(),
            "/emergency_call":(context)=>emergency_call(),
            "/currentlocation":(context)=>currentlocation(),
            "/fire_dhaka":(context)=>fire_dhaka(),
            "/fire_mymensingh":(context)=>fire_mymensingh(),
            "/fire_rajshahi":(context)=>fire_rajshahi(),
            "/fire_barishal":(context)=>fire_barishal(),
            "/fire_chittagong":(context)=>fire_chittagong(),
            "/fire_sylhet":(context)=>fire_sylhet(),
            "/fire_khulna":(context)=>fire_khulna(),
            "/fire_rangpur":(context)=>fire_rangpur(),
            "/police_dhaka":(context)=>police_dhaka(),
            "/police_mymensingh":(context)=>police_mymensingh(),
            "/police_rajshahi":(context)=>police_rajshahi(),
            "/police_barishal":(context)=>police_barishal(),
            "/police_chittagong":(context)=>police_chittagong(),
            "/police_sylhet":(context)=>police_sylhet(),
            "/police_khulna":(context)=>police_khulna(),
            "/police_rangpur":(context)=>police_rangpur(),
            "/hospital_dhaka":(context)=>hospital_dhaka(),
            "/hospital_mymensingh":(context)=>hospital_mymensingh(),
            "/hospital_rajshahi":(context)=>hospital_rajshahi(),
            "/hospital_barishal":(context)=>hospital_barishal(),
            "/hospital_chittagong":(context)=>hospital_chittagong(),
            "/hospital_sylhet":(context)=>hospital_sylhet(),
            "/hospital_khulna":(context)=>hospital_khulna(),
            "/hospital_rangpur":(context)=>hospital_rangpur(),
            "/ambulance_dhaka":(context)=>ambulance_dhaka(),
            "/ambulance_mymensingh":(context)=>ambulance_mymensingh(),
            "/ambulance_rajshahi":(context)=>ambulance_rajshahi(),
            "/ambulance_barishal":(context)=>ambulance_barishal(),
            "/ambulance_chittagong":(context)=>ambulance_chittagong(),
            "/ambulance_sylhet":(context)=>ambulance_sylhet(),
            "/ambulance_khulna":(context)=>ambulance_khulna(),
            "/ambulance_rangpur":(context)=>ambulance_rangpur(),
            "/bloodbank_dhaka":(context)=>bloodbank_dhaka(),
            "/bloodbank_mymensingh":(context)=>bloodbank_mymensingh(),
            "/bloodbank_rajshahi":(context)=>bloodbank_rajshahi(),
            "/bloodbank_barishal":(context)=>bloodbank_barishal(),
            "/bloodbank_chittagong":(context)=>bloodbank_chittagong(),
            "/bloodbank_sylhet":(context)=>bloodbank_sylhet(),
            "/bloodbank_khulna":(context)=>bloodbank_khulna(),
            "/bloodbank_rangpur":(context)=>bloodbank_rangpur(),
            "/location":(context)=>location(),
            "/profile":(context)=>profile(),
            "/about":(context)=>about(),
            "/privacy":(context)=>privacy(),
            "/registration":(context)=>registration(),
            "/login":(context)=>login(),
            //"/login":(context)=>EmergencyService(),

          },
          debugShowCheckedModeBanner: false,
          // Use this line to prevent extra rebuilds
          useInheritedMediaQuery: true,
          title: 'First Method',
          // You can use the library anywhere in the app even in theme
          theme: ThemeData(
            primarySwatch: Colors.grey,
            textTheme: TextTheme(bodyText2: TextStyle(fontSize: 30.sp)),
          ),
          home:splashscreen(),
        );
      },
    );
  }
}

