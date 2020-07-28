import 'package:flutter/material.dart';
//my Imports
import 'package:iwacu/components/cart_products.dart';
import 'login.dart';

class Cart extends StatefulWidget {
  @override
  _CartState createState() => _CartState();
}

class _CartState extends State<Cart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: Colors.deepOrangeAccent),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text('Shopping Cart', style: TextStyle(color: Colors.orangeAccent),),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.deepOrangeAccent,
              ),
              onPressed: () {}),
        ],
      ),

      body: new Cart_products(),

      bottomNavigationBar: new Container(
        color: Colors.white,
        child: Row(
          children: <Widget>[
            Expanded(
              child: ListTile(
                title: new Text("Total:"),
                subtitle: new Text("120000 RWF"),
              ),
            ),
            Expanded(
              child: new MaterialButton(onPressed: () {
                //Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
              },
                child: new Text("Check Out", style: TextStyle(color: Colors.red),),
                color: Colors.orange,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
