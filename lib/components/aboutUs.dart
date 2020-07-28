import 'package:flutter/material.dart';

class IwacuAbout extends StatefulWidget {
  @override
  _IwacuAboutState createState() => _IwacuAboutState();
}

class _IwacuAboutState extends State<IwacuAbout> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("About US"),
      ),
      body: new Center(
        child: new Text("About Iwacu",
        style: new TextStyle(fontSize: 25),
      ),
      ),
    );
  }
}
