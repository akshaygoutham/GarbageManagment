import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:garbage_management_system/individual_task.dart';

class Task extends StatefulWidget {
  @override
  _TaskState createState() => _TaskState();
}

class _TaskState extends State<Task> {
  List<String> tasks = ["Garb-1001","Grab-1002","Garb-1003"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
          automaticallyImplyLeading: false,
        title: Text("My Task"),
        backgroundColor: Colors.grey,

      ),
      body: ListView.builder(
          itemCount: tasks.length,
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(height: 10),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    children:[
                      SizedBox(height: 5),
                      Container(
                      padding: EdgeInsets.symmetric(horizontal: 10),
                      color: Colors.white,
                      width: MediaQuery.of(context).size.width,
                      height: 100,
                      child: ListTile(
                        title: Text('${tasks[index]}'),
                        leading: Icon(Icons.delete),
                        trailing: Icon(Icons.arrow_forward_ios),
                        contentPadding: EdgeInsets.all(10),
                        onTap: (){
                          Navigator.pushReplacement(context, MaterialPageRoute(builder: (context)=>IndividualTask()));
                        //   Navigator.pushReplacementNamed(context, "/logout);



                          // need to remove back key
                        }
                      ),
                    ),
                      ],
                  ),
                ),
             ],
            );
          }
      ),
    );
  }
}
