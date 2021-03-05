
import 'package:flutter/material.dart';
import 'package:garbage_management_system/bin.dart';
import 'package:garbage_management_system/cart.dart';
import 'package:garbage_management_system/description1.dart';
import 'package:garbage_management_system/description1.dart';
import 'package:garbage_management_system/description2.dart';
import 'package:garbage_management_system/description3.dart';
import 'package:garbage_management_system/description4.dart';
import 'package:garbage_management_system/description5.dart';
import 'package:garbage_management_system/description6.dart';
import 'package:garbage_management_system/feedback.dart';


class UserInterface extends StatefulWidget {
  @override
  _UserInterfaceState createState() => _UserInterfaceState();
}

class _UserInterfaceState extends State<UserInterface> {

  @override
  Widget build(BuildContext context) {
    var image;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.grey,
        elevation: 0,
        title: Text("Home"),
             actions: [
               IconButton(
                 icon: Icon(Icons.shopping_cart_rounded),
                 onPressed: (){
                   Navigator.push(context, MaterialPageRoute(builder: (context) => MyCart()));
                 },
               ),
             ],
            ),
      body: SafeArea(
        child: Container(
          padding: EdgeInsets.all(6.0),
          child: Column(
            children: <Widget>[
              Container(
                child: Container(
                  height: 190,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(20.0),
                    image: DecorationImage(
                      image:AssetImage("asset/recycle.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
             //1st portion

             SizedBox(height: 15),
              Expanded(
                  child:Container(
                    child: GridView.extent(
                      primary: false,
                      padding: const EdgeInsets.all(16),
                      crossAxisSpacing: 10,
                      mainAxisSpacing: 10,
                      maxCrossAxisExtent: 200.0,
                      children: <Widget>[

                        InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Description1()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Expanded(child: Image.asset('asset/1.png')),
                                Text('Bio-organic Manure',style: TextStyle(
                                  backgroundColor: Colors.white,
                                ),
                                ),
                                Text('\u20b9 500/-',style: TextStyle(
                                  backgroundColor: Colors.white,
                                ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Description2()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Expanded(child: Image.asset('asset/2.png')),
                                Text('Premium Compost',style: TextStyle(
                                  backgroundColor: Colors.white,
                                ),
                                ),
                                Text('\u20b9 250/-',style: TextStyle(
                                  backgroundColor: Colors.white,
                                ),
                                ),
                              ],
                            ),
                          ),
                        ),


                        InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Description3()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Expanded(child: Image.asset('asset/3.jpg')),
                                Text('Perlite',style: TextStyle(
                                  backgroundColor: Colors.white,
                                ),
                                ),
                                Text('\u20b9 670/-',style: TextStyle(
                                  backgroundColor: Colors.white,
                                ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Description4()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Expanded(child: Image.asset('asset/4.jpg')),
                                Text('Black Gold',style: TextStyle(
                                  backgroundColor: Colors.white,
                                ),
                                ),
                                Text('\u20b9 400/-',style: TextStyle(
                                  backgroundColor: Colors.white,
                                ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Description5()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Expanded(child: Image.asset('asset/5.jpg')),
                                Text('Plant Food',style: TextStyle(
                                  backgroundColor: Colors.white,
                                ),
                                ),
                                Text('\u20b9 350/-',style: TextStyle(
                                  backgroundColor: Colors.white,
                                ),
                                ),

                              ],
                            ),
                          ),
                        ),
                        InkWell(
                          onTap:(){
                            Navigator.push(context, MaterialPageRoute(builder: (context)=>Description6()));
                          },
                          child: Container(
                            padding: const EdgeInsets.all(8),
                            child: Column(
                              children: [
                                Expanded(child: Image.asset('asset/6.png')),
                                // Icon(Icons.add_shopping_cart,color: Colors.black,),
                                Text('Shake N Feed',style: TextStyle(
                                  backgroundColor: Colors.white,
                                ),
                                ),
                                Text('\u20b9 670/-',style: TextStyle(
                                  backgroundColor: Colors.white,
                                ),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  )),

            ],
          ),
        ),
      ),



      //Home side bar
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children:<Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green,
              ),
              accountName: Text("User name"),
              accountEmail: Text("Email"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange,
                child: Text("A"),
              ) ,
            ),
            ListTile(
              leading: Icon(Icons.delete_outline_outlined),
              title: Text("Bin",style: TextStyle(fontSize: 20),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => BinDetail()));

              },
            ),
            ListTile(
              leading: Icon(Icons.feedback_outlined),
              title: Text("feedback",style: TextStyle(fontSize: 18,fontStyle: FontStyle.italic),),
              onTap: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => FeedBack()));

              },
            ),
          ],
        ),
      ),
    );
  }
}
