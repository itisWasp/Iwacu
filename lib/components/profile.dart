import 'package:flutter/material.dart';

class IwacuProfile extends StatefulWidget {
  @override
  _IwacuProfileState createState() => _IwacuProfileState();
}

class _IwacuProfileState extends State<IwacuProfile> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Profile"),
      ),
      body: new Center(
        child: new Text("My Profile",
        style: new TextStyle(fontSize: 25),
      ),
      ),
    );
  }
}
