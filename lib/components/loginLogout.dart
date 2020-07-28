import 'package:flutter/material.dart';

class IwacuLogin extends StatefulWidget {
  @override
  _IwacuLoginState createState() => _IwacuLoginState();
}

class _IwacuLoginState extends State<IwacuLogin> {
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Login"),
      ),
      body: new Center(
        child: new Text("My Login",
        style: new TextStyle(fontSize: 25),
      ),
      ),
    );
  }
}
