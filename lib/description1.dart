
import 'package:flutter/material.dart';
import 'package:garbage_management_system/cart.dart';


class Description1 extends StatefulWidget {
  @override
  _Description1State createState() => _Description1State();
}

class _Description1State extends State<Description1> {
  get decoration => null;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        child: Card(
          elevation: 10,
          child: Container(
            width: 320,
            height: 450,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white,
            ),
            child: Column(
              children: [
                Container(
                  width: 250,
                  height: 250,
                  padding: EdgeInsets.all(10),
                  child: Expanded(
                    child: Image.asset('asset/1.png'),
                  ),
                ),
                Divider(),
                Text('Bio-Organic Manure',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20),),
                Text('100% organic manure, oil cakes, vermicompost &  micro organisms',style: TextStyle(fontSize: 10),),
                SizedBox(height:10),
                Text('Price: \u20b9 500',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 15),),
                SizedBox(height: 10),
                Text('Quantity:-1',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 10),),
                SizedBox(height: 8),
                MaterialButton(
                    child: Text('Add To Cart',style: TextStyle(fontWeight: FontWeight.bold,fontSize: 20,color: Colors.white),),
                    color: Colors.green,
                    onPressed: (){
                      Navigator.push(context, MaterialPageRoute(builder: (context) => MyCart()));
                    }),

              ]
            ),
          ),
        ),
      ),
    );
  }
}
