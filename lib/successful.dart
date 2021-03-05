import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Wish extends StatefulWidget {
  @override
  _WishState createState() => _WishState();
}

class _WishState extends State<Wish> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 200,
          height: 100,
          child: Center(
              child: Text("Payment Success..!",style: TextStyle(fontSize:20,color: Colors.green),
              ),
              ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(10),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}



