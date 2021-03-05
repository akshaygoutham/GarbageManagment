
import 'package:flutter/material.dart';

class FeedBack extends StatefulWidget {
  @override
  _FeedBackState createState() => _FeedBackState();
}

class _FeedBackState extends State<FeedBack> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Container(
          width: 330,
          height: 400,
          decoration: BoxDecoration(
            color:Colors.white,
            borderRadius: BorderRadius.circular(10)
          ),
          child: Column(
            children: [
              SizedBox(height: 20),
                Text('FeedBack',style: TextStyle(fontSize: 30,fontWeight:FontWeight.bold),),
                Container(
                  width: 280,
                  height: 250,
                  margin: EdgeInsets.all(10),
                  padding: EdgeInsets.all(5),
                  decoration: BoxDecoration(
                    color: Colors.transparent,
                    border: Border.all(color: Colors.black),
                  ),
                  child: Column(
                    children: [
                      Stack(
                        children:[ TextField(
                          maxLines:11,
                          decoration: InputDecoration(
                            hintText: "Write Something.........",
                            hintStyle: TextStyle(
                              color: Colors.black,
                            ),
                            border: InputBorder.none,
                          ),
                          cursorColor: Colors.black,
                        ),
                       ],
                      ),
                    ],
                  ),
                ),
              FlatButton(
                color: Colors.grey,
                child: Text('Submit',style: TextStyle(color: Colors.white),),
                onPressed: (){},),

            ],
          ),
        ),
      ),
    );
  }
}
