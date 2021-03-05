import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:garbage_management_system/task_list.dart';
import 'package:garbage_management_system/user.dart';
import 'main.dart';

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
      return Scaffold(
        appBar: AppBar(
          title: Text('Registration'),
          backgroundColor: Colors.grey,
        ),
        body: MyCustomForm(),
      );

  }
}

// ignore: must_be_immutable
class MyCustomForm extends StatefulWidget {
  @override
  MyCustomFormState createState() {
    return MyCustomFormState();
  }
}

class MyCustomFormState extends State<MyCustomForm> {
  final _formKey = GlobalKey<FormState>();

  String name,email,mobile,password;
  final uname=TextEditingController();
  final uemail=TextEditingController();
  final umobile=TextEditingController();
  final upassword=TextEditingController();

  get Fluttertoast => null;

  register()async {
    name = uname.text;
    email = uemail.text;
    mobile = umobile.text;
    password = upassword.text;

    var url = "http://192.168.29.78/garbage/register_user.php";
    var data = {"name": name, "email": email, "mobile":mobile, "password" : password};
    var res = await http.post(url, body: data);
    var message = jsonDecode(res.body);
    int success = message['success'];
if(success==1){
  Fluttertoast.showToast(msg: "registration done");
}
else{
  Fluttertoast.showToast(msg:"failed");
}

  }
  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: EdgeInsets.all(20),
      children:[ Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Colors.grey,
        ),
        child: Form(
          key: _formKey,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: <Widget>[
              Padding(padding: EdgeInsets.all( 10),),
              SizedBox(
                height: 60.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: uname,
                  decoration: InputDecoration(
                   labelText: 'name',
                   labelStyle: TextStyle(
                      color: Colors.white,
                      ),
                    border: InputBorder.none,
                  ),
                      cursorColor: Colors.white,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
              ),
              Divider(),
              SizedBox(
                height: 60.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: uemail,
                    decoration: InputDecoration(
                        labelText: 'Email',
                      labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                      border: InputBorder.none,
                    ),
                    cursorColor: Colors.white,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
              ),

              Divider(),
              SizedBox(
                height: 60.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: umobile,
                    decoration: InputDecoration(
                        labelText: 'Mobile',
                        labelStyle: TextStyle(
                          color: Colors.white,
                        ),
                      border: InputBorder.none,
                    ),
                    cursorColor: Colors.white,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                  ),
                ),
              ),

              Divider(),
              SizedBox(
                height: 60.0,
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: TextFormField(
                    controller: upassword,
                    decoration: InputDecoration(
                        labelText: 'Password',labelStyle: TextStyle(
                      color: Colors.white,
                    ),
                      border: InputBorder.none,
                    ),
                    cursorColor: Colors.white,
                    validator: (value) {
                      if (value.isEmpty) {
                        return 'Please enter some text';
                      }
                      return null;
                    },
                    obscureText: true,
                  ),
                ),
              ),

              Divider(),
              SizedBox(
                height: 60.0,
                child: Padding(
                  padding:EdgeInsets.symmetric(vertical: 16.0),
                  child: Center(
                    child: ElevatedButton(
                      style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.resolveWith<Color>(
                              (Set<MaterialState> states) {
                            if (states.contains(MaterialState.pressed))
                              return Colors.green;
                            return null;
                          },
                        ),
                      ),
                      onPressed: () {
                      Navigator.push(context, MaterialPageRoute(builder: (context)=>register()));


                      //for driver put Task();



                      },
                      child: Text('Done'),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    ],
    );
  }
}

class UserInerface {
}

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }
