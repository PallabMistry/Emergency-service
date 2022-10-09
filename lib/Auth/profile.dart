import 'dart:io';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:image_picker/image_picker.dart';

class profile extends StatefulWidget {
  const profile({Key? key}) : super(key: key);

  @override
  State<profile> createState() => _profileState();
}

class _profileState extends State<profile> {
  File? singleImage;
  final singlePicker = ImagePicker();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         //backgroundColor:Color(0xFFfcffe7) ,
        body: Padding(
          padding: const EdgeInsets.only( left: 20,right: 20),

          child: ListView(
            children: [
              Center(
                child: Column(
                    children: [
                      //SizedBox(height: 20,),
                      Row(
                          children: [
                            IconButton(onPressed: () {
                              Navigator.pushNamed(context,"/EmergencyService");

                            }, icon: Icon(Icons.arrow_back,size: 25,color: Colors.black,))
                            ,]),
                      SizedBox(height: 20,),
                      Text('Personalize',style: TextStyle(fontSize: 25,fontWeight: FontWeight.bold)),
                      SizedBox(height: 15,),
                      Text('Enter your personalize information\n            to verifiy your account.',style: TextStyle(fontSize: 15,color: Colors.grey)),
                      SizedBox(height: 20,),
                      InkWell(
                        onTap: () {
                          getSingleImage();
                        },
                        child: singleImage == null
                            ? Container(
                               clipBehavior: Clip.antiAliasWithSaveLayer,
                              decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                              )),
                                  width: 100.0,
                                  height: 100.0,
                               child: Icon(
                             CupertinoIcons.camera,
                             color: Colors.grey,
                          ),
                        )
                            : Container(
                          clipBehavior: Clip.antiAliasWithSaveLayer,
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(50.0),
                              color: Colors.white,
                              border: Border.all(
                                color: Colors.grey,
                              )),
                              width: 100.0,
                             height: 100.0,
                               child: Image.file(
                             singleImage!,
                             fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      SizedBox(height: 20,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                          prefixIcon: Icon(Icons.account_circle, color: Colors.black,),
                        ),
                        keyboardType: TextInputType.name,
                        obscureText: false,
                      ),
                       SizedBox(height: 15,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                          prefixIcon: Icon(Icons.email_outlined, color: Colors.black,),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        obscureText: false,
                      ),
                      SizedBox(height: 15,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'Phone Number',
                          hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                          prefixIcon: Icon(Icons.call, color: Colors.black,),
                        ),
                        keyboardType: TextInputType.number,
                        obscureText: false,
                      ),SizedBox(height: 15,),
                      TextField(
                        decoration: InputDecoration(
                          hintText: 'location',

                          hintStyle: TextStyle(fontSize: 18, color: Colors.grey),
                          border: OutlineInputBorder(borderRadius: BorderRadius.circular(10),),
                          prefixIcon: Icon(Icons.location_on_outlined, color: Colors.black,),
                        ),
                        keyboardType: TextInputType.number,
                        obscureText: false,
                      ),
                      SizedBox(height: 25,),
                      SizedBox(height: 60,width: 280,
                        child: ElevatedButton(onPressed: () {

                        },style: ElevatedButton.styleFrom(
                          primary: Color(0xFFe6ba95),
                          // Background color
                        ), child: Text(' Save ',style: TextStyle(fontSize: 30,color: Colors.black),)),
                      )
                    ]),
              )
            ],),
        ),
      );
  }
  Future getSingleImage() async {
    final pickedImage =
    await singlePicker.getImage(source: (ImageSource.gallery));
    setState(() {
      if (pickedImage != null) {
        singleImage = File(pickedImage.path);
      } else {
        print('No Image Selected');
      }
    });
  }
}