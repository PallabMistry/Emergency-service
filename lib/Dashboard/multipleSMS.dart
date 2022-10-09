import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_phone_direct_caller/flutter_phone_direct_caller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_sms/flutter_sms.dart';

class MultipleSMS extends StatefulWidget {
  const MultipleSMS({Key? key}) : super(key: key);

  @override
  State<MultipleSMS> createState() => _MultipleSMSState();
}

class _MultipleSMSState extends State<MultipleSMS> {
  late TextEditingController _controllerPeople, _controllerMessage;
  String? _message, body;
  String _canSendSMSMessage = 'Check is not run.';
  List<String> people = [];

  @override
  void initState() {
    super.initState();
    initPlatformState();
  }

  Future<void> initPlatformState() async {
    _controllerPeople = TextEditingController();
    _controllerMessage = TextEditingController();
  }

  Future<void> _sendSMS(List<String> recipients) async {
    try {
      String _result = await sendSMS(
          message: _controllerMessage.text, recipients: recipients);
      setState(() => _message = _result);
    } catch (error) {
      setState(() => _message = error.toString());
    }
  }

  Future<bool> _canSendSMS() async {
    bool _result = await canSendSMS();
    setState(() => _canSendSMSMessage =
    _result ? 'This unit can send SMS' : 'This unit cannot send SMS');
    return _result;
  }

  Widget _phoneTile(String name) {
    return Padding(
      padding: const EdgeInsets.all(3),
      child: Container(
          decoration: BoxDecoration(
              border: Border(
                bottom: BorderSide(color: Colors.grey.shade300),
                top: BorderSide(color: Colors.grey.shade300),
                left: BorderSide(color: Colors.grey.shade300),
                right: BorderSide(color: Colors.grey.shade300),
              )),
          child: Padding(
            padding: const EdgeInsets.all(4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                IconButton(
                  icon: const Icon(Icons.close),
                  onPressed: () => setState(() => people.remove(name)),
                ),
                Padding(
                  padding: const EdgeInsets.all(0),
                  child: Text(
                    name,
                    textScaleFactor: 1,
                    style: const TextStyle(fontSize: 12),
                  ),
                )
              ],
            ),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            backgroundColor:  Color(0xFFe6ba95),
            title: Row(
              children: [
                IconButton(onPressed: () { Navigator.pushNamed(context, "/EmergencyService");}, icon: Icon(Icons.arrow_back,color: Colors.black,)),
                SizedBox(width:20,),
                Text('My SMS',style: TextStyle(color: Colors.black,fontSize: 27.0,),),
              ],
            ),),

        body: ListView(
          children: <Widget>[
            if (people == null || people.isEmpty)
              const SizedBox(height: 0)
            else
              SizedBox(
                height: 90,
                child: Padding(
                  padding: const EdgeInsets.all(3),
                  child: ListView(
                    scrollDirection: Axis.horizontal,
                    children: List<Widget>.generate(people.length, (int index) {
                      return _phoneTile(people[index]);
                    }),
                  ),
                ),
              ),
            SizedBox(height: 40,),
            ListTile(
              leading: const Icon(Icons.people),
              title: TextField(
                controller: _controllerPeople,
                decoration:
                const InputDecoration(labelText: 'Add Phone Number'),
                keyboardType: TextInputType.number,
                onChanged: (String value) => setState(() {}),
              ),
              trailing: IconButton(
                icon: const Icon(Icons.add),
                onPressed: _controllerPeople.text.isEmpty
                    ? null
                    : () => setState(() {
                  people.add(_controllerPeople.text.toString());
                  _controllerPeople.clear();
                }),
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.message),
              title: TextField(
                decoration: const InputDecoration(labelText: 'Add Message'),
                controller: _controllerMessage,
                onChanged: (String value) => setState(() {}),
              ),
            ),
            const Divider(),
            ListTile(
              title: const Text('Can send SMS'),
              subtitle: Text(_canSendSMSMessage),
              trailing: IconButton(
                padding: const EdgeInsets.symmetric(vertical: 16),
                icon: const Icon(Icons.check),
                onPressed: () {
                  _canSendSMS();
                },
              ),
            ),
            SizedBox(height: 300.0,),
            Padding(
              padding: const EdgeInsets.all(8),
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                          (states) => Theme.of(context).accentColor),
                  padding: MaterialStateProperty.resolveWith(
                          (states) => const EdgeInsets.symmetric(vertical: 16)),
                ),
                onPressed: () {
                  _send();
                },
                child: Text(
                  'SEND',
                  style: Theme.of(context).accentTextTheme.button,
                ),
              ),
            ),
            Visibility(
              visible: _message != null,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Expanded(
                    child: Padding(
                      padding: const EdgeInsets.all(12),
                      child: Text(
                        _message ?? 'No Data',
                        maxLines: null,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  void _send() {
    if (people.isEmpty) {
      setState(() => _message = 'At Least 1 Person or Message Required');
    } else {
      _sendSMS(people);
    }
  }
}

class emergency_call extends StatelessWidget {
  const emergency_call({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          child: ListView(
            children: [
              SizedBox(height: 15.h,),
              Row(
                children: [
                  IconButton(onPressed: () { Navigator.pushNamed(context, "/EmergencyService");}, icon: Icon(Icons.arrow_back,color: Colors.black,)),
                  Center(child: Text('জরুরি হটলাইন',style: TextStyle(fontSize: 25.sp, fontWeight: FontWeight.bold),)),
                ],
              ),
              SizedBox(height: 10.h,),
              Card(
                color: Color(0xFFe6ba95), margin: EdgeInsets.all(10.r),
                child: ListTile(
                  title: Text ('Emergency services \n( জরুরি সেবা )', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                  trailing: IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber('999');}, icon: Icon(Icons.call,color: Colors.black,)),
                ),),
              Card(
                color: Color(0xFFe6ba95), margin: EdgeInsets.all(10.r),
                child: ListTile(
                  title: Text ('Government information and services\n( সরকারি তথ্য ও সেবা )', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                  trailing: IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber('333');}, icon: Icon(Icons.call,color: Colors.black,)),
                ),),
              Card(
                color: Color(0xFFe6ba95), margin: EdgeInsets.all(10.r),
                child: ListTile(
                  title: Text ('Prevention of violence against women and children \n( নারী ও শিশু নির্যাতন প্রতিরোধ )', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                  trailing: IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber('109');}, icon: Icon(Icons.call,color: Colors.black,)),
                ),),
              Card(
                color: Color(0xFFe6ba95), margin: EdgeInsets.all(10.r),
                child: ListTile(
                  title: Text ('ACC \n( দুদক )', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                  trailing: IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber('106');}, icon: Icon(Icons.call,color: Colors.black,)),
                ),),Card(
                color: Color(0xFFe6ba95), margin: EdgeInsets.all(10.r),
                child: ListTile(
                  title: Text ('Disaster warning \n( দুর্যোগের আগাম বার্তা )', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                  trailing: IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber('1090');}, icon: Icon(Icons.call,color: Colors.black,)),
                ),),Card(
                color: Color(0xFFe6ba95), margin: EdgeInsets.all(10.r),
                child: ListTile(
                  title: Text ('Land Services and Complaints \n( ভূমি সেবা ও অভিযোগ  )', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                  trailing: IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber('16122');}, icon: Icon(Icons.call,color: Colors.black,)),
                ),),Card(
                color: Color(0xFFe6ba95), margin: EdgeInsets.all(10.r),
                child: ListTile(
                  title: Text ('B.I.W.T.A \n( বি.আই.ডব্লিউ.টি.এ  )', style: TextStyle(fontSize: 14.sp,fontWeight: FontWeight.bold),),
                  trailing: IconButton(onPressed: () {FlutterPhoneDirectCaller.callNumber('16113');}, icon: Icon(Icons.call,color: Colors.black,)),
                ),),
            ],

          ),

        ),
      ),
    );
  }
}
