import 'package:flutter/material.dart';
class IwacuFavorites extends StatefulWidget {
  @override
  _IwacuFavoritesState createState() => _IwacuFavoritesState();
}

class _IwacuFavoritesState extends State<IwacuFavorites> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        title: new Text("My Favorites")
      ),
      body: new Center(
        child: new Text(
          "My Favorites",
          style: new TextStyle(fontSize: 25.0),
        ),
      ),
    );
  }
}
