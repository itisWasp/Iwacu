import 'package:flutter/material.dart';

class IwacuCart extends StatefulWidget {
  @override
  _IwacuCartState createState() => _IwacuCartState();
}

class _IwacuCartState extends State<IwacuCart> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Cart"),
      ),
      body: new Center(
        child: new Text("My Cart",style: new TextStyle(fontSize: 25),),
      ),
    );
  }
}
