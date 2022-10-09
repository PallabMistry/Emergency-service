//import 'package:firebase_auth/firebase_auth.dart';
// import 'dart:js';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:lottie/lottie.dart';
//import 'package:fluttertoast/fluttertoast.dart';
//import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class registration extends StatefulWidget {

  const registration({Key? key}) : super(key: key);
  static const String route="/registration";

  @override
  _registrationState createState() => _registrationState();
}

class _registrationState extends State<registration>
with SingleTickerProviderStateMixin{
  late AnimationController controller;
  @override
  void initState(){
    super.initState();
    controller=AnimationController(duration:Duration(seconds: 3),vsync: this);

    controller.addStatusListener((status)async {
      if(status==AnimationStatus.completed){
        Navigator.pop(context);
        controller.reset();
      }
    });
  }
  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }
  TextEditingController _emailController=TextEditingController();
  TextEditingController _passwordController=TextEditingController();
  bool _obscureText=true;
  // signup()async{
  //   try {
  //    // UserCredential userCredential = await FirebaseAuth.instance.createUserWithEmailAndPassword(
  //         email:_emailController.text,
  //         password:_passwordController.text
  //     );
  //     var authCredential=userCredential.user;
  //     print(authCredential!.uid);
  //     if(authCredential.uid.isNotEmpty){
  //       Navigator.pushNamed(context, "/splashscreen");
  //       // Navigator.push(context, CupertinoPageRoute(builder: (_)=> splashscreen()));
  //     }
  //     else {
  //       Fluttertoast.showToast(msg:'You havent signed up yet');
  //     }
  //   }
  //   on FirebaseAuthException catch (e) {
  //     if (e.code == 'weak-password') {
  //       Fluttertoast.showToast(msg:'The password provided is too weak.');
  //     } else if (e.code == 'email-already-in-use') {
  //       Fluttertoast.showToast(msg:'The account already exists for that email.');
  //     }
  //   } catch (e) {
  //     print(e);
  //   }
  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding( padding: EdgeInsets.all(8.0),
          child: SingleChildScrollView(
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
               Lottie.asset('images/signup.json') ,
                Text('Welcome to Registration Page.',style: GoogleFonts.carterOne(fontSize: 30,color: Colors.deepOrangeAccent),),
                Text('Please write to correct information.',  style: GoogleFonts.satisfy(fontSize: 20,color: Color(0xFF00bfff),),),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Container(
                      height: 38,width: 41,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Icon(Icons.email_outlined,color: Colors.white,size: 20,),
                      ),
                    ),
                    SizedBox(width: 15,),
                    Expanded(child: TextField(
                        controller:  _emailController,
                        decoration: InputDecoration(
                          hintText: 'Enter Your Email',
                          hintStyle: TextStyle(fontSize: 20, color: Colors.black),
                          labelText: 'Email',
                          labelStyle: TextStyle(fontSize: 20, color: Colors.blue,),
                        )
                    )),
                  ],),
                SizedBox(height: 10,),
                Row(
                  children: [
                    Container(
                      height: 38,width: 41,
                      decoration: BoxDecoration(
                          color: Colors.deepOrange,borderRadius: BorderRadius.circular(12)),
                      child: Center(
                        child: Icon(Icons.lock_outline,color: Colors.white,size: 20,),
                      ),
                    ),
                    SizedBox(width: 10,),
                    Expanded(child: TextField(
                      controller:_passwordController,
                      obscureText: _obscureText,
                      decoration: InputDecoration(
                          hintText: 'password must be 7 character ',
                          hintStyle: TextStyle(fontSize: 14, color: Colors.black),
                          labelText: 'PassWord',
                          labelStyle: TextStyle(fontSize: 20, color: Colors.blue,),
                          suffixIcon: _obscureText ==true
                              ? IconButton(onPressed: () {
                            setState(() {
                              _obscureText=false;
                            });
                          },
                              icon:Icon(Icons.remove_red_eye,size:20))
                              : IconButton(onPressed: () {
                            setState(() {
                              _obscureText=true;
                            });
                          },
                            icon: Icon(Icons.visibility_off,size:20),
                          )
                      ),
                    ),
                    ),],
                ),
                SizedBox(height: 25,),
                Center(
                  child: SizedBox(width: 190,height: 56,
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          primary: Color(0xFFe6ba95),
                          // Background color
                        ),
                         onPressed:exitDialog,
                        // showDialog(
                        //   barrierDismissible: false,
                        //     context: context, builder: (context)=>
                        // Dialog(child: Center(child: Lottie.asset('images/thank-you.json',repeat:false)),)),
                        //    () {// signup();
                        //    },
                        child: Text('Continue',style: TextStyle(fontSize: 30,fontWeight: FontWeight.bold),)),
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  children: [
                    Text('Already have an Accounts? ',  style: GoogleFonts.satisfy(fontSize: 20,color: Color(0xFF00bfff),),),
                    TextButton(onPressed: () {
                      Navigator.pushNamed(context,"/login");
                    }, child: Text('LogIn',style:GoogleFonts.secularOne(fontSize: 20,fontWeight: FontWeight.bold,color: Colors.red)))
                  ],
                ),
              ],),
          )
      ),
    );
  }
  Future<dynamic> exitDialog(){
    return showDialog(
      context: context,
      builder: (context) =>
          Dialog(
            child: Container(height: 320,width: 150,
              child: Center(child: Lottie.asset('images/thank-you.json',
              repeat: false,
                controller: controller,
                onLoaded: (composition){
                controller.forward();
                }
              )),
            ),
          )
    );
  }
}

