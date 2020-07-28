import 'package:flutter/material.dart';

class HorizantalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/2.png',
            image_caption: 'Imikenyero',
          ),
          Category(
            image_location: 'images/cats/5.png',
            image_caption: 'Dress',
          ),
          Category(
            image_location: 'images/cats/7.png',
            image_caption: 'Suit',
          ),

          Category(
            image_location: 'images/cats/3.png',
            image_caption: 'Pants',
          ),
          Category(
            image_location: 'images/cats/4.png',
            image_caption: 'Male Shoes',
          ),
          Category(
            image_location: 'images/cats/1.png',
            image_caption: 'Female Shoes',
          ),

        ],
      ),
    );
  }
}

class Category extends StatelessWidget {
  final String image_location;
  final String image_caption;

  Category({this.image_location, this.image_caption});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(0.0),
      child: InkWell(
        onTap: () {},
        child: Container(
          width: 80,
          child: ListTile(
            title: Image.asset(
              image_location,
              width: 40,
              height: 40,
            ),
            subtitle: Container(
              alignment: Alignment.topCenter,
              child: Text(image_caption,textAlign: TextAlign.center,style: TextStyle(fontSize: 8, fontWeight: FontWeight.bold, color: Colors.orange),),
            ),
          ),
        ),
      ),
    );
  }
}
