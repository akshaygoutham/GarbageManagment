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
        backgroundColor: Colors.green[800],
      ),
      body: Center(

          child: ListView(
            children:<Widget>[
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
                    leading: Image.asset('asset/bin-2.jpg',width: 80,height: 80,),
                    title: Text('Bin-1001',style: TextStyle(fontSize: 20),),
                           ),
                  SizedBox(height: 20,),
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
                      leading: Image.asset('asset/bin-2.jpg',width: 80,height: 80,),
                      title: Text('Bin-1002',style: TextStyle(fontSize: 20),),
                    ),
                    SizedBox(height: 20,),
                    Text("Status:-70%",),
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
                      leading: Image.asset('asset/bin-2.jpg',width: 80,height: 80,),
                      title: Text('Bin-1003',style: TextStyle(fontSize: 20),),
                    ),
                    SizedBox(height: 20,),
                    Text("Status:-50%",),
                    SizedBox(height: 20,),
                  ],
                ),
              ),
              SizedBox(height: 20,),

             ],
           ),
         ),
        );
  }
}
