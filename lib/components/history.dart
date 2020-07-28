import 'package:flutter/material.dart';

class IwacuHistory extends StatefulWidget {
  @override
  _IwacuHistoryState createState() => _IwacuHistoryState();
}

class _IwacuHistoryState extends State<IwacuHistory> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Order History"),
      ),
      body: new Center(
        child: new Text("My History",
        style: new TextStyle(fontSize: 25),
      ),
      ),
    );
  }
}
