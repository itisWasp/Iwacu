import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'favorites.dart';
import 'messages.dart';
import 'cart.dart';
import 'notifications.dart';
import 'history.dart';
import 'delivery.dart';
import 'profile.dart';
import 'loginLogout.dart';
import 'aboutUs.dart';

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  BuildContext context;
  @override
  Widget build(BuildContext context) {
    this.context = context;
    return new Scaffold(
      appBar: new AppBar(
        centerTitle: true,
        title: new Text("Iwacu"),
        actions: <Widget>[
          new IconButton(icon: new Icon(Icons.favorite,color: Colors.red,) ,
              onPressed: (){
                Navigator.of(context).push(
                    new CupertinoPageRoute(builder: (BuildContext context) {
                  return new IwacuFavorites();
                }));
              }),
          new Stack(
            alignment: Alignment.topLeft,
            children: <Widget>[
              new IconButton(
                  icon: new Icon(
                    Icons.chat,
                    color: Colors.white,
                  ) ,
                  onPressed: (){
                    Navigator.of(context).push(new CupertinoPageRoute(
                      builder: (BuildContext context) =>
                      new IwacuMessages()));
                  }),
              new CircleAvatar(
                radius: 8.0,
                backgroundColor: Colors.red,
                child: new Text("0",style: new TextStyle(color: Colors.white, fontSize: 12.0),),
              )
            ],
          )
        ],
      ),
      body: new Center(
        child: new Text("My HomePage Store",style: new TextStyle(fontSize: 25.0),),
      ),
      floatingActionButton: Stack(
        alignment: Alignment.topLeft,
        children: <Widget>[
          new FloatingActionButton(
            onPressed: (){
              Navigator.of(context).push(new CupertinoPageRoute(
                  builder: (BuildContext context) =>
                  new IwacuCart()));
            },
            child: new Icon(Icons.shopping_cart),
            ),
          new CircleAvatar(
            radius: 10.0,
            backgroundColor: Colors.red,
            child: new Text("0",style: new TextStyle(color: Colors.white, fontSize: 12.0),),
          )
        ],
      ),
      drawer: new Drawer(
        child: new Column(
          children: <Widget>[
            new UserAccountsDrawerHeader(accountName: new Text("Mugisha Israel"), accountEmail: new Text("demjinzwalvis2002@gmail.com"),
              currentAccountPicture: new CircleAvatar(backgroundColor: Colors.white,
                child: new Icon(Icons.person),
              ),
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.notifications,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Order Notification"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) =>
                    new IwacuNotifications()));
              },
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.history,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Order History"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) =>
                    new IwacuHistory()));
              },
            ),
            new Divider(),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.person,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Profile Settings"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) =>
                    new IwacuProfile()));
              },
            ),
            new ListTile(
              leading: new CircleAvatar(
                child: new Icon(Icons.home,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Delivery Address"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) =>
                    new IwacuDelivery()));
              },
            ),
            new Divider(),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(Icons.help,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("About Us"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) =>
                    new IwacuAbout()));
              },
            ),
            new ListTile(
              trailing: new CircleAvatar(
                child: new Icon(Icons.exit_to_app,
                  color: Colors.white,
                  size: 20.0,
                ),
              ),
              title: new Text("Login"),
              onTap: (){
                Navigator.of(context).push(new CupertinoPageRoute(
                    builder: (BuildContext context) =>
                    new IwacuLogin()));
              },
            ),
          ],
        ),
      ),
      );
  }
}
