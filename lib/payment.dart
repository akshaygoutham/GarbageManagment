
import 'package:flutter/material.dart';
import 'package:garbage_management_system/successful.dart';


class Payment extends StatefulWidget {
  @override
  _PaymentState createState() => _PaymentState();
}

class _PaymentState extends State<Payment> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        backgroundColor: Colors.green[800],
        title: Text('Payment'),
      ),
      body: Container(
        child:Container(
          padding: EdgeInsets.symmetric(horizontal: 20),
          color: Colors.white,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              // SizedBox(width: 100.0,),
             TextField(
               keyboardType: TextInputType.number,
            decoration: InputDecoration(
              hintText: 'Card Number',
              filled: true,
              hintStyle: TextStyle(color: Colors.black),
              border: InputBorder.none,
                ),
            cursorColor: Colors.black,
            style: TextStyle(color: Colors.black),
              ),
              Divider(),
              TextField(
                keyboardType: TextInputType.number,
                decoration: InputDecoration(
                  hintText: 'CVV',
                  filled: true,
                  hintStyle: TextStyle(color: Colors.black),
                  border: InputBorder.none,
                ),
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
                obscureText:true,
              ),
              Divider(),
              TextField(
                keyboardType:TextInputType.datetime,
                decoration: InputDecoration(
                  hintText: 'Exp month/year',
                  filled: true,
                  hintStyle: TextStyle(color: Colors.black),
                  border: InputBorder.none,
                ),
                cursorColor: Colors.black,
                style: TextStyle(color: Colors.black),
              ),
              SizedBox(height: 20),
              Container(
               child: FlatButton(
                 padding: EdgeInsets.all(10),
                   color: Colors.green,
                    child: Text('Submit',style: TextStyle(color: Colors.white),),
                    onPressed:(){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => Wish()));}),
              ),
            ],
          ),
        ),
      ),
    );
  }
}


