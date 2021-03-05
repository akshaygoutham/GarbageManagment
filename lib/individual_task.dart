import 'package:flutter/material.dart';
import 'package:garbage_management_system/task_list.dart';

class IndividualTask extends StatefulWidget {
  @override
  _IndividualTaskState createState() => _IndividualTaskState();
}

class _IndividualTaskState extends State<IndividualTask> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Garbage"),
        backgroundColor: Colors.grey,
      ),
      body: ListView(
        children: [
          Container(
            child:
            Image.asset("asset/bin-2.jpg",height: 200,width: 200,),
        ),

          Container(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  labelText: "Quantity",
                  labelStyle: TextStyle(
                    color: Colors.black,
                  ),
                  filled: true,
                  icon: Icon(Icons.keyboard_arrow_down),
                ),
                cursorColor: Colors.black,
                onTap: (){
                  //status of garbage content //
                },
              ),
              RaisedButton(
                child: Text('Done',style: TextStyle(color: Colors.black),),
                onPressed: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context)=>Task()));
                //  back to home
                },
              ),
            ],
          ),
        ),
       ],
      ),
    );
  }
}
