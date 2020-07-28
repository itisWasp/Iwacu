import 'package:flutter/material.dart';
class IwacuMessages extends StatefulWidget {
  @override
  _IwacuMessagesState createState() => _IwacuMessagesState();
}

class _IwacuMessagesState extends State<IwacuMessages> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("Messages"),
      ),
      
      body: new Center(child: new Text("My Messages",style: new TextStyle(fontSize: 25.0),),),
    );
  }
}
