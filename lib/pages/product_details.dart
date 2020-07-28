//import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:iwacu/main.dart';

class ProductDetails extends StatefulWidget {
  final product_detail_name;
  final product_detail_new_price;
  final product_detail_old_price;
  final product_detail_picture;

  ProductDetails({
    this.product_detail_name,
    this.product_detail_new_price,
    this.product_detail_old_price,
    this.product_detail_picture,
  });

  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: new AppBar(
        iconTheme: new IconThemeData(color: Colors.deepOrangeAccent),
        centerTitle: true,
        elevation: 0.0,
        backgroundColor: Colors.transparent,
        title: InkWell(
            /*onTap: (){
              Navigator.push(context, MaterialPageRoute(builder: (context)=> new HomePage()));
            },*/

            child: Text('Iwacu', style: TextStyle(color: Colors.orangeAccent),)),
        actions: <Widget>[
          new IconButton(
              icon: Icon(
                Icons.search,
                color: Colors.deepOrangeAccent,
              ),
              onPressed: () {}),

        ],
      ),
      body: new ListView(
        children: <Widget>[
          new Container(
            height: 300,
            child: GridTile(
              child: Container(
                color: Colors.white70,
                child: Image.asset(widget.product_detail_picture),
              ),
              footer: new Container(
                color: Colors.white70,
                child: ListTile(
                  leading: new Text(
                    widget.product_detail_name,
                    style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16),
                  ),
                  title: new Row(
                    children: <Widget>[
                      Expanded(
                        child: new Text(
                          "${widget.product_detail_old_price} Rwf",
                          style: TextStyle(
                              color: Colors.red,
                              decoration: TextDecoration.lineThrough),
                        ),
                      ),
                      Expanded(
                        child: new Text(
                          "${widget.product_detail_new_price} RWF",
                          style: TextStyle(
                              fontWeight: FontWeight.bold, color: Colors.green),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),

          // ========The Second Buttons =====

          Row(
            children: <Widget>[
              // ====== the size button ======
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                    builder:  (context){
                      return new AlertDialog(
                        title: new Text("Size"),
                        content: new Text("Choose the size "),
                        actions: <Widget>[
                          new MaterialButton(onPressed: (){
                            Navigator.  of(context).pop(context);
                          },
                          child: new Text("Close"),
                          ),
                        ],
                      );
                        });
                  },
                  color: Colors.white,
                  textColor: Colors.orangeAccent,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Size")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
              // ====== the size button ======
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder:  (context){
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose the size "),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.  of(context).pop(context);
                              },
                                child: new Text("Close"),
                              ),
                            ],
                          );
                        });
                  },

                  color: Colors.white,
                  textColor: Colors.orangeAccent,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Color ")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),

              // ====== the size button ======
              Expanded(
                child: MaterialButton(
                  onPressed: () {
                    showDialog(context: context,
                        builder:  (context){
                          return new AlertDialog(
                            title: new Text("Size"),
                            content: new Text("Choose the size "),
                            actions: <Widget>[
                              new MaterialButton(onPressed: (){
                                Navigator.  of(context).pop(context);
                              },
                                child: new Text("Close"),
                              ),
                            ],
                          );
                        });
                  },

                  color: Colors.white,
                  textColor: Colors.orangeAccent,
                  elevation: 0.2,
                  child: Row(
                    children: <Widget>[
                      Expanded(child: new Text("Qty")),
                      Expanded(child: new Icon(Icons.arrow_drop_down)),
                    ],
                  ),
                ),
              ),
            ],
          ),

          Row(
            children: <Widget>[
              // ====== the size button ======
              Expanded(
                child: MaterialButton(
                  onPressed: () {},
                  color: Colors.orange,
                  textColor: Colors.white,
                  elevation: 0.2,
                  child: new Text("Rent Now"),
                ),
              ),

              new IconButton(
                  icon: Icon(
                    Icons.add_shopping_cart,
                    color: Colors.orange,
                  ),
                  onPressed: () {}),
              new IconButton(
                  icon: Icon(
                    Icons.favorite_border,
                    color: Colors.orange,
                  ),
                  onPressed: () {}),
            ],
          ),
          Divider(),

          new ListTile(
            title: new Text("Product details"),
            subtitle: new Text("Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum."),
          ),
          Divider(),
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
              child: new Text("Product Name", style: TextStyle(color: Colors.orange),),),
              Padding(padding: const EdgeInsets.all(5.0),
              child: new Text("Blazer"),
              ),

            ],
          ),

          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product brand", style: TextStyle(color: Colors.orange),),),

              // REMEBER TO CREATE THE PRODUCT BRAND
              Padding(padding: const EdgeInsets.all(5.0),
                child: new Text("Brand X"),
              ),
            ],
          ),
//        ADD THE PROJECT CONDITION
          new Row(
            children: <Widget>[
              Padding(padding: const EdgeInsets.fromLTRB(12.0, 5.0, 5.0, 5.0),
                child: new Text("Product condition", style: TextStyle(color: Colors.orange),),),
              Padding(padding: const EdgeInsets.all(5.0),
                child: new Text("New"),
              ),
            ],
          ),

          Divider(),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: new Text("Similar Products"),
          ),

          // Similar products session
          Container(
            height: 380,
            child: Similar_products(),
          ),

        ],
      ),
    );
  }
}

class Similar_products extends StatefulWidget {
  @override
  _Similar_productsState createState() => _Similar_productsState();
}

class _Similar_productsState extends State<Similar_products> {

  var product_list = [
    {
      "name": "Male Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price":120000,
      "price":85000,
    },

    {
      "name": "Female Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price":150000,
      "price":75000,
    },

    {
      "name": "Mini Skirt",
      "picture": "images/products/skt2.jpeg",
      "old_price":105000,
      "price":65000,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
        new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Similar_Single_prod(
            prod_name: product_list[index]['name'],
            prod_pricture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Similar_Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Similar_Single_prod({
    this.prod_name,
    this.prod_pricture,
    this.prod_old_price,
    this.prod_price,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Hero(
          tag: prod_name,
          child: Material(
            child: InkWell(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                // here we are passing the values of the product to the product details page
                  builder: (context) => new ProductDetails(
                    product_detail_name: prod_name,
                    product_detail_old_price: prod_old_price,
                    product_detail_new_price: prod_price,
                    product_detail_picture: prod_pricture,
                  ))),
              child: GridTile(
                  footer: Container(
                      color: Colors.orange,
                      child: new Row(children: <Widget>[
                        Expanded(
                          child: Text(prod_name, style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),),
                        ),
                        new Text("${prod_price} RWF", style: TextStyle(color: Colors.green, fontWeight: FontWeight.bold, fontStyle: FontStyle.italic),)
                      ],)
                  ),
                  child: Image.asset(
                    prod_pricture,
                    fit: BoxFit.cover,
                  )),
            ),
          )),
    );
  }
}


