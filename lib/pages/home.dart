import 'package:flutter/material.dart';
import 'package:carousel_pro/carousel_pro.dart';

//importing additional programs
import 'package:iwacu/components/horizontal_listview.dart';
import 'package:iwacu/components/products.dart';
import 'package:iwacu/pages/cart.dart';
import 'login.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    Widget image_carousel = new Container(
      height: 150.0,
      child: new Carousel(
        boxFit: BoxFit.cover,
        images: [
          AssetImage('images/c1.jpg'),
          AssetImage('images/m1.jpeg'),
          AssetImage('images/m2.jpg'),
          AssetImage('images/w4.jpeg'),
          AssetImage('images/m3.JPG'),
          AssetImage('images/w3.jpeg'),
        ],
        autoplay: false,
        animationCurve: Curves.fastOutSlowIn,
        animationDuration: Duration(milliseconds: 1000),
        dotSize: 5.0,
        dotColor: Colors.orange,
        indicatorBgPadding: 2.0,
        dotBgColor: Colors.transparent,
      ),
    );
    return Scaffold(
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: Colors.deepOrangeAccent),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: Text(
          'Iwacu',
          style: TextStyle(color: Colors.orange),
        ),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.deepOrangeAccent,
              ),
              onPressed: () {}),
          new IconButton(
              icon: Icon(
                Icons.shopping_cart,
                color: Colors.deepOrangeAccent,
              ),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              })
        ],
      ),
      drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            // Header
            new UserAccountsDrawerHeader(
              accountName: Text('Mugisha Israel'),
              accountEmail: Text('demjinzwalvis2002@gmail.com'),
              currentAccountPicture: GestureDetector(
                child: new CircleAvatar(
                  backgroundColor: Colors.grey,
                  child: Icon(Icons.person, color: Colors.white),
                ),
              ),
              decoration: new BoxDecoration(color: Colors.orange),
            ),
            //body
            InkWell(
              onTap: () {
              },
              child: ListTile(
                title: Text(
                  'Home Page',
                  style: TextStyle(color: Colors.orange),
                ),
                leading: Icon(Icons.home, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'My Account',
                  style: TextStyle(color: Colors.orange),
                ),
                leading: Icon(Icons.person, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'My Orders',
                  style: TextStyle(color: Colors.orange),
                ),
                leading: Icon(Icons.shopping_basket, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => new Cart()));
              },
              child: ListTile(
                title: Text(
                  'Shopping Cart',
                  style: TextStyle(color: Colors.orange),
                ),
                leading: Icon(Icons.shopping_cart, color: Colors.red),
              ),
            ),

            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Favorites',
                  style: TextStyle(color: Colors.orange),
                ),
                leading: Icon(Icons.favorite, color: Colors.red),
              ),
            ),
            Divider(),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'Settings',
                  style: TextStyle(color: Colors.orange),
                ),
                leading: Icon(Icons.settings, color: Colors.green),
              ),
            ),
            InkWell(
              onTap: () {},
              child: ListTile(
                title: Text(
                  'About',
                  style: TextStyle(color: Colors.orange),
                ),
                leading: Icon(
                  Icons.help,
                  color: Colors.blue,
                ),
              ),
            ),
          ],
        ),
      ),
      body: new Column(
        children: <Widget>[
          //image carousel begins here
          //    image_carousel,
          //paddking Widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: new Text(
                'Categories',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Colors.deepOrange),
              ),
            ),
          ),
          //horixontal list view begins here
          HorizantalList(),
          //padding widget
          new Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              alignment: Alignment.centerLeft,
              child: new Text(
                'Recent Products',
                style: TextStyle(
                  fontStyle: FontStyle.italic,
                  color: Colors.deepOrangeAccent,
                ),
              ),
            ),
          ),
          //grid view
          Flexible(child: Products()),
        ],
      ),
    );
  }
}
