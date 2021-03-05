import 'package:flutter/material.dart';

class BinDetail extends StatefulWidget {
  @override
  _BinDetailState createState() => _BinDetailState();
}

class _BinDetailState extends State<BinDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      appBar: AppBar(
        title: Text("Bins"),
        backgroundColor: Colors.green,
      ),
      body: Center(
        // child: Container(
        //   width: 400,
        //   height: 350,
        //   padding: EdgeInsets.all(10),
          child: ListView(
            children:<Widget>[
              SizedBox(height: 30,),

              Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12.0),
              ),
              color: Colors.white,
              elevation: 15,
              child: Column(
                mainAxisSize:MainAxisSize.min ,
                children: <Widget>[
                  ListTile(
                    leading: Icon(Icons.delete,size: 90),
                    title: Text('Bin-1001',style: TextStyle(fontSize: 40),),
                           ),
                  SizedBox(height: 30,),
                  Text("Status:-100%",),
                  SizedBox(height: 20,),

                        ],
                       ),
                      ),
              SizedBox(height: 20,),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                color: Colors.white,
                elevation: 15,
                child: Column(
                  mainAxisSize:MainAxisSize.min ,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.delete,size: 90),
                      title: Text('Bin-1002',style: TextStyle(fontSize: 40),),
                    ),
                    SizedBox(height: 30,),
                    Text("Status:-70%",),
                    SizedBox(height: 30,),


                  ],
                ),
              ),
              SizedBox(height: 20,),

              Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(12.0),
                ),
                color: Colors.white,
                elevation: 15,
                child: Column(
                  mainAxisSize:MainAxisSize.min ,
                  children: <Widget>[
                    ListTile(
                      leading: Icon(Icons.delete,size: 90),
                      title: Text('Bin-1003',style: TextStyle(fontSize: 40),),
                    ),
                    SizedBox(height: 30,),
                    Text("Status:-50%",),
                    SizedBox(height: 20,),


                  ],
                ),
              ),
              SizedBox(height: 30,),

              // Card(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(12.0),
              //   ),
              //   color: Colors.grey,
              //   elevation: 15,
              //   child: Column(
              //     mainAxisSize:MainAxisSize.min ,
              //     children: <Widget>[
              //       ListTile(
              //         leading: Icon(Icons.delete,size: 90),
              //         title: Text('Bin-1004',style: TextStyle(fontSize: 40),),
              //       ),
              //       Text("Quantity:-",),
              //       Text("100%"),
              //
              //     ],
              //   ),
              // ),
              // Card(
              //   shape: RoundedRectangleBorder(
              //     borderRadius: BorderRadius.circular(12.0),
              //   ),
              //   color: Colors.grey,
              //   elevation: 15,
              //   child: Column(
              //     mainAxisSize:MainAxisSize.min ,
              //     children: <Widget>[
              //       ListTile(
              //         leading: Icon(Icons.delete,size: 90),
              //         title: Text('Bin',style: TextStyle(fontSize: 40),),
              //         subtitle: Text("User name" ,style: TextStyle(fontSize: 25),),
              //       ),
              //       Text("Quantity:-",),
              //       Text("100%"),
              //
              //     ],
              //   ),
              // ),
                ]
           ),
         ),
        );
    // );
  }
}
