
import 'package:flutter/material.dart';
import 'package:garbage_management_system/register.dart';
import 'package:garbage_management_system/task_list.dart';
import 'package:garbage_management_system/user.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

void main(){
  runApp(LoginPage());
  
}

// ignore: must_be_immutable
class LoginPage extends StatefulWidget {

  @override
  _LoginPageState createState() => _LoginPageState();
}

void setState(Null Function() param0) {
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: LoginPage1(),
    );
  }
}

class LoginPage1 extends StatefulWidget {
  @override
  _LoginPage1State createState() => _LoginPage1State();
}

class _LoginPage1State extends State<LoginPage1> {


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body:SafeArea(

            child: ListView(
              padding: EdgeInsets.symmetric(horizontal: 24.0),
              children: [
                SizedBox(height: 90.0),
                Container(
                  color: Colors.transparent,
                  child: Column(
                    children: [
                      Image.asset("asset/ICONGARB.png", width:200,height:200,),
                      SizedBox(height:60.0),
                    ],
                  ),
                ),

                SizedBox(height:50.0,
                child:TextField(
                  decoration: InputDecoration(
                    labelText: 'Username',
                    filled: true,
                    labelStyle: TextStyle(
                      color: Colors.black,
                    ),
                    border: InputBorder.none
                  ),
                  cursorColor: Colors.black,
                  style: TextStyle(color: Colors.black),
                ),
                ),
                Divider(),
                SizedBox(
                  height: 50.0,
                  child: TextField(
                   decoration: InputDecoration(
                     labelText: 'Password',
                     filled: true,
                     labelStyle: TextStyle(
                       color: Colors.black,
                     ),
                     border: InputBorder.none,
                    ),
                    cursorColor: Colors.black,
                   obscureText: true,
                    style: TextStyle(color: Colors.black),
                  ),
                ),
                RaisedButton(

                  child: Text('Login',style: TextStyle(color: Colors.black),),
                  onPressed: (){
                    Navigator.push(context, MaterialPageRoute(builder: (context) => UserInterface()));
                  },
                ),

                // FlatButton(
                //     child: Text('Forgot?',style:TextStyle(color: Colors.black),),
                //     onPressed: (){}
                // ),
                SizedBox(height: 20),
                FlatButton(
                    child: Text('Register',style:TextStyle(color: Colors.black)),
                    padding: EdgeInsets.symmetric(horizontal: 50),
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyApp()));
                    }
                ),
              ],
            ),
         ) ,
      );
  }
}

