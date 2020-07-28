import 'package:flutter/material.dart';

class IwacuDelivery extends StatefulWidget {
  @override
  _IwacuDeliveryState createState() => _IwacuDeliveryState();
}

class _IwacuDeliveryState extends State<IwacuDelivery> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Delivery Information"),
      ),
      body: new Center(
        child: new Text("My Address",
        style: new TextStyle(fontSize: 25),
      ),
      ),
    );
  }
}
