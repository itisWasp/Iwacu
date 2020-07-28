import 'package:flutter/material.dart';
import 'package:iwacu/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Male Blazer",
      "picture": "images/products/blazer1.jpeg",
      "old_price":120000,
      "price":85000,
    },
    {
      "name": "Red dress",
      "picture": "images/products/dress1.jpeg",
      "old_price":100000,
      "price":50000,
    },
    {
      "name": "Female Blazer",
      "picture": "images/products/blazer2.jpeg",
      "old_price":150000,
      "price":75000,
    },
    {
      "name": "Black dress",
      "picture": "images/products/dress2.jpeg",
      "old_price":130000,
      "price":80000,
    },
    {
      "name": "Skirt",
      "picture": "images/products/skt1.jpeg",
      "old_price":170000,
      "price":95000,
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
          return Padding(
            padding: const EdgeInsets.all(4.0),
            child: Single_prod(
              prod_name: product_list[index]['name'],
              prod_pricture: product_list[index]['picture'],
              prod_old_price: product_list[index]['old_price'],
              prod_price: product_list[index]['price'],
            ),
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_pricture;
  final prod_old_price;
  final prod_price;

  Single_prod({
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
