import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
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
import 'package:garbage_management_system/main.dart';

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
        backgroundColor: Colors.green[800],
        elevation: 0,
        title: Text("Home"),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart_rounded),
            onPressed: () {
              Navigator.push(
                  context, MaterialPageRoute(builder: (context) => MyCart()));
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
                      image: AssetImage("asset/recycle.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
              //1st portion

              SizedBox(height: 15),
              Expanded(
                  child: Container(
                child: GridView.extent(
                  primary: false,
                  padding: const EdgeInsets.all(16),
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10,
                  maxCrossAxisExtent: 200.0,
                  children: <Widget>[
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description1()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Expanded(child: Image.asset('asset/1.png')),
                            Text(
                              'Bio-organic Manure',
                              style: TextStyle(
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Text(
                              '\u20b9 500/-',
                              style: TextStyle(
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description2()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Expanded(child: Image.asset('asset/2.png')),
                            Text(
                              'Premium Compost',
                              style: TextStyle(
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Text(
                              '\u20b9 250/-',
                              style: TextStyle(
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description3()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Expanded(child: Image.asset('asset/3.jpg')),
                            Text(
                              'Perlite',
                              style: TextStyle(
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Text(
                              '\u20b9 670/-',
                              style: TextStyle(
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description4()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Expanded(child: Image.asset('asset/4.jpg')),
                            Text(
                              'Black Gold',
                              style: TextStyle(
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Text(
                              '\u20b9 400/-',
                              style: TextStyle(
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description5()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Expanded(child: Image.asset('asset/5.jpg')),
                            Text(
                              'Plant Food',
                              style: TextStyle(
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Text(
                              '\u20b9 350/-',
                              style: TextStyle(
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) => Description6()));
                      },
                      child: Container(
                        padding: const EdgeInsets.all(8),
                        child: Column(
                          children: [
                            Expanded(child: Image.asset('asset/6.png')),
                            // Icon(Icons.add_shopping_cart,color: Colors.black,),
                            Text(
                              'Shake N Feed',
                              style: TextStyle(
                                backgroundColor: Colors.white,
                              ),
                            ),
                            Text(
                              '\u20b9 670/-',
                              style: TextStyle(
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
          children: <Widget>[
            UserAccountsDrawerHeader(
              decoration: BoxDecoration(
                color: Colors.green[800],
              ),
              accountName: Text("User name"),
              accountEmail: Text("Email"),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.orange[800],
                child: Icon(Icons.person, color: Colors.white),
              ),
            ),
            ListTile(
              trailing: Image.asset('asset/bin-2.jpg', width: 30, height: 30),
              title: Text(
                "Bin",
                style: TextStyle(fontSize: 18),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => BinDetail()));
              },
            ),
            ListTile(
              trailing: Icon(
                Icons.feedback_sharp,
                size: 20,
              ),
              title: Text(
                "Feedback",
                style: TextStyle(
                  fontSize: 18,
                ),
              ),
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => FeedBack()));
              },
            ),
            SizedBox(
              height: 265,
            ),
            Divider(
              thickness: 1,
            ),
            ListTile(
              trailing: Icon(
                Icons.logout,
                size: 20,
              ),
              title: Text(
                "Logout",
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              onTap: () {
                Fluttertoast.showToast(msg: "Logout");
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => LoginPage()));
              },
            ),
          ],
        ),
      ),
    );
  }
}
