import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:garbage_management_system/task_list.dart';
import 'package:garbage_management_system/user.dart';
import 'package:http/http.dart' as http;

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Registration'),
        backgroundColor: Colors.green[800],
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

  TextEditingController nameController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  register() async {
    String name = nameController.text;
    String email = emailController.text;
    String mobile = mobileController.text;
    String password = passwordController.text;

    var url = "http://172.20.10.2/garbage/register_user.php";
    var data = {
      "name": name,
      "email": email,
      "mobile": mobile,
      "password": password
    };
    var res = await http.post(url, body: data);
    var message = jsonDecode(res.body);
    int success = message['success'];
    if (success == 1) {
      Fluttertoast.showToast(msg: "registration done");
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => UserInterface()));
    } else {
      Fluttertoast.showToast(msg: "failed");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.grey,
      child: ListView(
        padding: EdgeInsets.all(20),
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: <Widget>[
                  Padding(
                    padding: EdgeInsets.all(10),
                  ),
                  SizedBox(
                    height: 50.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: nameController,
                        decoration: InputDecoration(
                          hintText: 'Name',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                        ),
                        cursorColor: Colors.black,
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     return 'Please enter some text';
                        //   }
                        //   return null;
                        // },
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 50.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.emailAddress,
                        controller: emailController,
                        decoration: InputDecoration(
                          hintText: 'Email',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                        ),
                        cursorColor: Colors.black,
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     return 'Please enter some text';
                        //   }
                        //   return null;
                        // },
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 50.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        keyboardType: TextInputType.phone,
                        controller: mobileController,
                        decoration: InputDecoration(
                          hintText: 'Mobile',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                        ),
                        cursorColor: Colors.black,
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     return 'Please enter some text';
                        //   }
                        //   return null;
                        // },
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 50.0,
                    child: Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: TextFormField(
                        controller: passwordController,
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            color: Colors.black,
                          ),
                          border: InputBorder.none,
                        ),
                        cursorColor: Colors.black,
                        // validator: (value) {
                        //   if (value.isEmpty) {
                        //     return 'Please enter some text';
                        //   }
                        //   return null;
                        // },
                        obscureText: true,
                      ),
                    ),
                  ),
                  Divider(),
                  SizedBox(
                    height: 60.0,
                    child: Padding(
                      padding: EdgeInsets.symmetric(vertical: 16.0),
                      child: RaisedButton(
                        splashColor: Colors.green,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(15)
                        ),
                        onPressed: () {
                          if (nameController.text == "") {
                            Fluttertoast.showToast(msg: "name required");
                          } else if (emailController.text == "") {
                            Fluttertoast.showToast(msg: "email required");
                          } else if (mobileController.text == "") {
                            Fluttertoast.showToast(msg: "mobile required");
                          } else if (passwordController.text == "") {
                            Fluttertoast.showToast(msg: "password required");
                          } else {
                            register();
                          }

                          // Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => Task()));
                          //for driver put Task();
                        },
                        child: Text('Register'),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}


