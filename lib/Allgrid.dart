import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';

class dhakagrid extends StatefulWidget {
  const dhakagrid({Key? key}) : super(key: key);

  @override
  State<dhakagrid> createState() => _dhakagridState();
}

class _dhakagridState extends State<dhakagrid> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: Column(
          children: [
            SizedBox(height: 15.h,),
            Center(child: Text('All Services Of Dhaka',style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20.h,),

            Expanded(
              child: Container(height: 600,
                child: GridView.count(
                  crossAxisSpacing:20.w,
                  mainAxisSpacing: 20.w,
                  crossAxisCount: 2,
                  children: [
                    ElevatedButton( onPressed: () {Navigator.pushNamed(context, "/police_dhaka" );},
                style: ElevatedButton.styleFrom(primary: Color(0xFFe6ba95), ),
                      child:  Column(
                        children: [
                          Center(child: Image.asset('images/policeimg.jpg',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Police',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/fire_dhaka" );
                    },
                      style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),
                      child:  Column(
                        children: [
                          Center(child: Image.asset('images/fireimg.png',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Fire Service',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/hospital_dhaka" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/hospitalimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hospital',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/ambulance_dhaka" );
                    }, style: ElevatedButton.styleFrom(primary:Color(0xFFe6ba95),),
                      child:  Column(
                        children: [
                          Center(child: Image.asset('images/ambulanceimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Ambulance',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/bloodbank_dhaka" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/bloodbimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Blood Bank',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/emergency_call" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/e.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hot Line',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ],
                ),),),
          ],
        ),),);
  }
}
class mymensinghgrid extends StatelessWidget {
  const mymensinghgrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Informations',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: Column(
          children: [
            SizedBox(height: 15.h,),
            Center(child: Text('All Services Of Mymensingh',style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20.h,),

            Expanded(
              child: Container(height: 600,
                child: GridView.count(
                  crossAxisSpacing:20.w,
                  mainAxisSpacing: 20.w,
                  crossAxisCount: 2,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/police_mymensingh" );
                    },  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),child:  Column(
                        children: [
                          Center(child: Image.asset('images/policeimg.jpg',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Police',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/fire_mymensingh" );
                    },style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),
                      child:  Column(
                        children: [
                          Center(child: Image.asset('images/fireimg.png',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Fire Service',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/hospital_mymensingh" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/hospitalimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hospital',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/ambulance_mymensingh" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/ambulanceimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Ambulance',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/bloodbank_mymensingh" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/bloodbimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Blood Bank',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/emergency_call" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/e.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hot Line',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ],
                ),),),
          ],),),);
  }
}
class rajshahigrid extends StatelessWidget {
  const rajshahigrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: Column(
          children: [
            SizedBox(height: 15.h,),
            Center(child: Text('All Services Of Rajshahi',style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20.h,),

            Expanded(
              child: Container(height: 600,
                child: GridView.count(
                  crossAxisSpacing:20.w,
                  mainAxisSpacing: 20.w,
                  crossAxisCount: 2,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/police_rajshahi" );
                    },  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),child:  Column(
                        children: [
                          Center(child: Image.asset('images/policeimg.jpg',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Police',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/fire_rajshahi" );
                    },style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),
                      child:  Column(
                        children: [
                          Center(child: Image.asset('images/fireimg.png',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Fire Service',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/hospital_rajshahi" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/hospitalimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hospital',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/ambulance_rajshahi" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/ambulanceimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Abulance',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/bloodbank_rajshahi" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/bloodbimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Blood Bank',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/emergency_call" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/e.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hot Line',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ],
                ),),),
          ],
        ),),);
  }
}
class barishalgrid extends StatelessWidget {
  const barishalgrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: Column(
          children: [
            SizedBox(height: 15.h,),
            Center(child: Text('All Services Of Barishal',style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20.h,),

            Expanded(
              child: Container(height: 600,
                child: GridView.count(
                  crossAxisSpacing:20.w,
                  mainAxisSpacing: 20.w,
                  crossAxisCount: 2,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/police_barishal" );
                    },  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),child:  Column(
                        children: [
                          Center(child: Image.asset('images/policeimg.jpg',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Police',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/fire_barishal" );
                    },style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),
                      child:  Column(
                        children: [
                          Center(child: Image.asset('images/fireimg.png',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Fire Service',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/hospital_barishal" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/hospitalimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hospital',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/ambulance_barishal" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/ambulanceimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Ambulance',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/bloodbank_barishal" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/bloodbimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Blood Bank',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/emergency_call" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/e.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hot Line',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),),
                  ],
                ),),),
          ],
        ),),

    );
  }
}
class chittagonggrid extends StatelessWidget {
  const chittagonggrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: Column(
          children: [
            SizedBox(height: 15.h,),
            Center(child: Text('All Services Of Chittagong',style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20.h,),

            Expanded(
              child: Container(height: 600,
                child: GridView.count(
                  crossAxisSpacing:20.w,
                  mainAxisSpacing: 20.w,
                  crossAxisCount: 2,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/police_chittagong" );
                    },  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),child:  Column(
                        children: [
                          Center(child: Image.asset('images/policeimg.jpg',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Police',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/fire_chittagong" );
                    },style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),
                      child:  Column(
                        children: [
                          Center(child: Image.asset('images/fireimg.png',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Fire Service',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/hospital_chittagong" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/hospitalimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hospital',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/ambulance_chittagong" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/ambulanceimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Ambulance',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/bloodbank_chittagong" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/bloodbimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Blood Bank',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/emergency_call" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/e.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hot Line',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ],
                ),),),
          ],
        ),),);
  }
}
class khulnagrid extends StatelessWidget {
  const khulnagrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: Column(
          children: [
            SizedBox(height: 15.h,),
            Center(child: Text('All Services Of Khulna',style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20.h,),

            Expanded(
              child: Container(height: 600,
                child: GridView.count(
                  crossAxisSpacing:20.w,
                  mainAxisSpacing: 20.w,
                  crossAxisCount: 2,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/police_khulna" );
                    },  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),child:  Column(
                        children: [
                          Center(child: Image.asset('images/policeimg.jpg',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Police',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/fire_khulna" );
                    },style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),
                      child:  Column(
                        children: [
                          Center(child: Image.asset('images/fireimg.png',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Fire Service',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/hospital_khulna" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/hospitalimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hospital',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/ambulance_khulna" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/ambulanceimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Ambulance',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/bloodbank_khulna" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/bloodbimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Blood Bank',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/emergency_call" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/e.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hot Line',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),),
                  ],
                ),),),
          ],
        ),),

    );  }
}
class sylhetgrid extends StatelessWidget {
  const sylhetgrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: Column(
          children: [
            SizedBox(height: 15.h,),
            Center(child: Text('All Services Of Sylhet',style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20.h,),

            Expanded(
              child: Container(height: 600,
                child: GridView.count(
                  crossAxisSpacing:20.w,
                  mainAxisSpacing: 20.w,
                  crossAxisCount: 2,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/police_sylhet" );
                    },  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),child:  Column(
                        children: [
                          Center(child: Image.asset('images/policeimg.jpg',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Police',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/fire_sylhet" );
                    },style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),
                      child:  Column(
                        children: [
                          Center(child: Image.asset('images/fireimg.png',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Fire Service',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/hospital_sylhet" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/hospitalimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hospital',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/ambulance_sylhet" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/ambulanceimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Ambulance',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/bloodbank_sylhet" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/bloodbimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Blood Bank',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/emergency_call" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/e.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hot Line',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                  ],
                ),),),
          ],
        ),),);  }
}
class rangpurgrid extends StatelessWidget {
  const rangpurgrid({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor:Color(0xFFEBD8C3), title: Text('Emergency Services &\n         Information',style:GoogleFonts.carterOne(fontSize:22.sp,fontWeight: FontWeight.bold,color: Colors.black),), centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(15.0),

        child: Column(
          children: [
            SizedBox(height: 15.h,),
            Center(child: Text('All Services Of Rangpur',style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),)),
            SizedBox(height: 20.h,),

            Expanded(
              child: Container(height: 600,
                child: GridView.count(
                  crossAxisSpacing:20.w,
                  mainAxisSpacing: 20.w,
                  crossAxisCount: 2,
                  children: [
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/police_rangpur" );
                    },  style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),child:  Column(
                        children: [
                          Center(child: Image.asset('images/policeimg.jpg',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Police',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/fire_rangpur" );
                    },style: ElevatedButton.styleFrom(
                      primary: Color(0xFFe6ba95), ),
                      child:  Column(
                        children: [
                          Center(child: Image.asset('images/fireimg.png',height: 110.h, width:120.w,fit: BoxFit.cover,),),
                          Text('Fire Service',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),),
                    ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/hospital_rangpur" );

                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/hospitalimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hospital',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/ambulance_rangpur" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/ambulanceimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Ambulance',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ), ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/bloodbank_rangpur" );
                    }, style: ElevatedButton.styleFrom(
                      primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/bloodbimg.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Blood Bank',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),ElevatedButton(onPressed: () {
                      Navigator.pushNamed(context, "/emergency_call" );
                    }, style: ElevatedButton.styleFrom(primary:Color(0xFFe6ba95),),child:  Column(
                        children: [
                          Center(child: Image.asset('images/e.png',height: 110.h, width:120.w,fit: BoxFit.fitWidth,),),
                          Text('Hot Line',style: GoogleFonts.openSans(fontSize: 18.sp,color: Colors.black,fontWeight: FontWeight.bold),)
                        ],
                      ),),
                  ],
                ),),),
          ],
        ),),

    );  }
}

