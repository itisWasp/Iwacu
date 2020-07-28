import 'package:flutter/material.dart';

class Cart_products extends StatefulWidget {
  @override
  _Cart_productsState createState() => _Cart_productsState();
}

class _Cart_productsState extends State<Cart_products> {
  var Products_on_the_cart = [
    {
      "name": "Male Blazer",
      "picture": "images/products/blazer1.jpeg",
      "price": 85000,
      "size": "M",
      "color": "Orange",
      "quantity": 1,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "price": 50000,
      "size": "ML",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "price": 50000,
      "size": "ML",
      "color": "Red",
      "quantity": 1,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "price": 50000,
      "size": "ML",
      "color": "Red",
      "quantity": 1,
    },
  ];

  @override
  Widget build(BuildContext context) {
    return new ListView.builder(
        itemCount: Products_on_the_cart.length,
        itemBuilder: (context, index) {
          return Single_cart_product(
            cart_prod_name: Products_on_the_cart[index]['name'],
            cart_prod_color: Products_on_the_cart[index]['color'],
            cart_prod_qty: Products_on_the_cart[index]['quantity'],
            cart_prod_size: Products_on_the_cart[index]['size'],
            cart_prod_price: Products_on_the_cart[index]['price'],
            cart_prod_pricture: Products_on_the_cart[index]['picture'],
          );
        });
  }
}

class Single_cart_product extends StatelessWidget {
  final cart_prod_name;
  final cart_prod_pricture;
  final cart_prod_price;
  final cart_prod_size;
  final cart_prod_color;
  final cart_prod_qty;

  Single_cart_product({
    this.cart_prod_name,
    this.cart_prod_color,
    this.cart_prod_price,
    this.cart_prod_pricture,
    this.cart_prod_qty,
    this.cart_prod_size,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: ListTile(
        // ===== LEADING SECTION =========
        leading: new Image.asset(cart_prod_pricture),
        // =====TITLE SECTION ==========
        title: new Text(cart_prod_name),
        // === SUBTITLE SECTION =====
        subtitle: new Column(
          children: <Widget>[
            // Row inside a column
            new Row(
              children: <Widget>[
                // this section is for the size of the product
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text("Size:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    cart_prod_size,
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
                //     ===== This Section of the product color=====
                new Padding(
                  padding: const EdgeInsets.fromLTRB(20, 8, 8, 8),
                  child: new Text("Color:"),
                ),
                Padding(
                  padding: const EdgeInsets.all(0.0),
                  child: new Text(
                    cart_prod_color,
                    style: TextStyle(color: Colors.orange),
                  ),
                ),
              ],
            ),
            // ====== This Section is for the product price=====
            new Container(
              alignment: Alignment.topLeft,
              child: new Text(
                "${cart_prod_price} Rwf",
                style: TextStyle(
                  fontSize: 17.0,
                  fontWeight: FontWeight.bold,
                  color: Colors.orange,
                ),
              ),
            ),
          ],
        ),
        trailing: new Column(
          children: <Widget>[
            Expanded(child: new IconButton(
                icon: Icon(Icons.arrow_drop_up), onPressed: () {})),
            new Text("$cart_prod_qty"),
            Expanded(child: new IconButton(
                icon: Icon(Icons.arrow_drop_down), onPressed: () {})),
          ],
        ),
      ),
    );
  }
}
