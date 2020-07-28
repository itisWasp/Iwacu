import 'package:flutter/material.dart';

class IwacuNotifications extends StatefulWidget {
  @override
  _IwacuNotificationsState createState() => _IwacuNotificationsState();
}

class _IwacuNotificationsState extends State<IwacuNotifications> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Order Notifications"),
      ),
      body: new Center(child: new Text("My Notifications",
        style: new TextStyle(fontSize: 25),
      ),
      ),
    );
  }
}
