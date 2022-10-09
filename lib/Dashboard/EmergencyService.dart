import 'dart:io';
import 'dart:ui';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';


class EmergencyService extends StatefulWidget {
  const EmergencyService({Key? key}) : super(key: key);

  @override
  State<EmergencyService> createState() => _EmergencyServiceState();
}

class _EmergencyServiceState extends State<EmergencyService> {
  Future<dynamic> exitDialog(){
    return showDialog(
      context: context,
      builder: (context) =>
          AlertDialog(
            title: const Text('Are you Sure?'),
            content: Text('Do you want to exit from the app?'),
            actions: [
              FlatButton(onPressed: () {
                SystemNavigator.pop();
              }, child: Text('YES')),
              FlatButton(onPressed: () {
                Navigator.of(context).pop(false);
              }, child: Text('NO')),

            ],
            backgroundColor: Color(0xFF99ff99),
          ),
    );
  }
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () {
        exitDialog();
        return Future.value(false);
      },
      child: Scaffold(
        backgroundColor: Color(0xFFfcffe7),
        appBar: AppBar(
          backgroundColor:  Color(0xFFe6ba95),
          title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),),
          centerTitle: true,
        ),
        body:
        Padding(
          padding: EdgeInsets.all(13.r),
          child: ListView(children: [
            CarouselSlider(items: [
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    image: DecorationImage(
                      image: AssetImage('images/6.png'),
                      fit: BoxFit.cover,
                    )),),Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    image: DecorationImage(
                      image: AssetImage('images/police.png'),
                      fit: BoxFit.cover,
                    )),),Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    image: DecorationImage( image: AssetImage('images/2.png'),
                      fit: BoxFit.cover,
                    )),),Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    image: DecorationImage( image: AssetImage('images/5.png'),
                      fit: BoxFit.cover,
                    )),),Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    image: DecorationImage(image: AssetImage('images/3.png'),
                      fit: BoxFit.cover,
                    )),),Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    image: DecorationImage(image: AssetImage('images/4.png'),
                      fit: BoxFit.cover,
                    )),),Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.all(Radius.circular(20.r)),
                    image: DecorationImage(image: AssetImage('images/1.png'),
                      fit: BoxFit.cover,
                    )),),
            ], options: CarouselOptions(
              height:140.h,
              autoPlay: true,
              autoPlayCurve: Curves.easeInOut,
              enlargeCenterPage: true,
              reverse: true,
              // viewportFraction: 0.8
            )),
            SizedBox(height:10,),
            Container(height: 110,
              child: GridView.count(
                crossAxisSpacing:20.w,
                mainAxisSpacing: 20.w,
                crossAxisCount: 3,
                children: [
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, "/currentlocation" );
                    },  style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEBD8C3), ),child:  Column(
                      children: [
                        Center(child: Image.asset('images/img_1.png',height: 70.h,width: 70.w,fit: BoxFit.fitWidth,),),
                        Text('Location',style: TextStyle(color: Colors.black,),)
                      ],
                    ),
                  ), ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, "/MultipleSMS" );
                    },style: ElevatedButton.styleFrom(
                    primary: Color(0xFFEBD8C3), ),
                    child:  Column(
                      children: [
                        Center(child: Image.asset('images/img.png',height: 70.h,width: 70.w,fit: BoxFit.fitWidth,),),
                        Text('MultiSMS',style: TextStyle(color: Colors.black,),)
                      ],
                    ),),
                  ElevatedButton(onPressed: () {
                    Navigator.pushNamed(context, "/emergency_call" );
                    }, style: ElevatedButton.styleFrom(
                    primary:Color(0xFFEBD8C3),),child:  Column(
                      children: [
                        Center(child: Image.asset('images/e.png',height: 70.h,width: 70.w,fit: BoxFit.fitWidth,),),
                        Text('Hot Line',style: TextStyle(color: Colors.black,),)
                      ],
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 15.h,),
            Center(child: Text('Division Of Bangladesh',style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),)),
            SizedBox(height: 10.h,),
            Card(
              color: Color(0xFFEBD8C3),
              child: ListTile(
                title: Text(
                  'Dhaka (ঢাকা)',
                  style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/dhakagrid" );
                },
                trailing: Icon(
                  Icons.double_arrow_rounded,
                  color: Colors.black,
                ),
              ),
            ), Card(
              color: Color(0xFFEBD8C3),
              child: ListTile(
                title: Text(
                  'Mymensingh (ময়মনসিংহ)',
                  style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/mymensinghgrid" );
                },
                trailing: Icon(
                  Icons.double_arrow_rounded,
                  color: Colors.black,
                ),
              ),
            ),
            Card(
              color: Color(0xFFEBD8C3),
              child: ListTile(
                title: Text(
                  'Rajshahi (রাজশাহী)',
                  style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/rajshahigrid" );
                },
                trailing: Icon(
                  Icons.double_arrow_rounded,
                  color: Colors.black,
                ),
              ),
            ),
            Card(
              color: Color(0xFFEBD8C3),
              child: ListTile(
                title: Text(
                  'Barishal (বরিশাল)',
                  style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/barishalgrid" );
                },
                trailing: Icon(
                  Icons.double_arrow_rounded,
                  color: Colors.black,
                ),
              ),
            ), Card(
              color: Color(0xFFEBD8C3),
              child: ListTile(
                title: Text(
                  'Chittagong (চট্টগ্রাম)',
                  style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/chittagonggrid" );
                },
                trailing: Icon(
                  Icons.double_arrow_rounded,
                  color: Colors.black,
                ),
              ),
            ), Card(
              color: Color(0xFFEBD8C3),
              child: ListTile(
                title: Text(
                  'Khulna (খুলনা)',
                  style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/khulnagrid" );
                },
                trailing: Icon(
                  Icons.double_arrow_rounded,
                  color: Colors.black,
                ),
              ),
            ), Card(
              color: Color(0xFFEBD8C3),
              child: ListTile(
                title: Text(
                  'Sylhet (সিলেট)',
                  style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/sylhetgrid" );
                },
                trailing: Icon(
                  Icons.double_arrow_rounded,
                  color: Colors.black,
                ),
              ),
            ), Card(
              color: Color(0xFFEBD8C3),
              child: ListTile(
                title: Text(
                  'Rangpur (রংপুর)',
                  style: TextStyle(fontSize: 20.sp,fontWeight: FontWeight.bold),
                ),
                onTap: () {
                  Navigator.pushNamed(context, "/rangpurgrid" );
                },
                trailing: Icon(
                  Icons.double_arrow_rounded,
                  color: Colors.black,
                ),
              ),
            )
          ],
          ),
        ) ,
        drawer: Drawer(backgroundColor: Color(0xFFfcffe7),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: ListView(
              children: [
                SizedBox(height:10.h,),
                Center(child: Text('Emergency Services &\n          Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),)),

                Stack(
                  children: [
                    Container(
                      padding: EdgeInsets.all(50.50.w),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          CircleAvatar(
                            radius: 80,
                            backgroundImage: AssetImage('images/E_logo.png'),
                            ),
                        ],),
                    ),
                  ],),
                SizedBox(height: 10,),
                Card(
                  color:Color(0xFFe6ba95),
                  child: ListTile(leading: Icon(Icons.account_circle, color: Colors.black,),
                    onTap: () {Navigator.pushNamed(context, "/profile" );},
                    title: Text('Personalize', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),SizedBox(height: 5,),
                Card(
                  color: Color(0xFFe6ba95),
                  child: ListTile(
                    leading: Icon(Icons.location_history, color: Colors.black,),
                    onTap: () {Navigator.pushNamed(context, "/currentlocation" );},
                    title: Text('My Location', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),SizedBox(height: 5,),
                Card(
                  color: Color(0xFFe6ba95),
                  child: ListTile(
                    leading: Icon(Icons.app_registration, color: Colors.black,),
                    onTap: () { Navigator.pushNamed(context, "/registration" );},
                    title: Text('Register', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),SizedBox(height: 5,),

                Card(
                  color: Color(0xFFe6ba95),
                  child: ListTile(
                    leading: Icon(Icons.error_outline, color: Colors.black,),
                    onTap: () {Navigator.pushNamed(context,"/about" );},
                    title: Text('About', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),
                ),SizedBox(height: 5,),

                Card(
                  color: Color(0xFFe6ba95),
                  child: ListTile(
                    leading: Icon(Icons.flag, color: Colors.black,),
                    onTap: () {Navigator.pushNamed(context,"/privacy" );},
                    title: Text('Privacy Police', style: TextStyle(fontWeight: FontWeight.bold),),
                  ),),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
