import 'package:flutter/material.dart';
import 'package:km_shopping/pages/product_details.dart';

class Products extends StatefulWidget {
  @override
  _ProductsState createState() => _ProductsState();
}

class _ProductsState extends State<Products> {
  var product_list = [
    {
      "name": "Blazer 1",
      "picture": "images/products/blazer1.jpg",
      "old_price": 120,
      "price": 80,
    },
    {
      "name": "Blazer 2",
      "picture": "images/products/blazer2.jpg",
      "old_price": 150,
      "price": 100,
    },
    {
      "name": "Blazer 3",
      "picture": "images/products/blazer3.jpg",
      "old_price": 100,
      "price": 60,
    },
    {
      "name": "Dress 1",
      "picture": "images/products/dress1.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Dress 2",
      "picture": "images/products/dress2.jpg",
      "old_price": 140,
      "price": 70,
    },
    {
      "name": "Dress 3",
      "picture": "images/products/dress3.jpg",
      "old_price": 100,
      "price": 50,
    },
    {
      "name": "Dress 4",
      "picture": "images/products/dress4.jpg",
      "old_price": 100,
      "price": 75,
    },
    {
      "name": "Hills 1",
      "picture": "images/products/hills1.jpg",
      "old_price": 120,
      "price": 80,
    },
    {
      "name": "Hills 2",
      "picture": "images/products/hills2.jpg",
      "old_price": 100,
      "price": 60,
    },
    {
      "name": "Pants 1",
      "picture": "images/products/pants1.jpg",
      "old_price": 120,
      "price": 80,
    },
    {
      "name": "Pants 2",
      "picture": "images/products/pants2.jpg",
      "old_price": 120,
      "price": 80,
    },
    {
      "name": "Pants 3",
      "picture": "images/products/pants3.jpg",
      "old_price": 120,
      "price": 80,
    },
    {
      "name": "Pants 4",
      "picture": "images/products/pants4.jpg",
      "old_price": 120,
      "price": 80,
    },
    {
      "name": "Shoe 1",
      "picture": "images/products/shoe1.jpg",
      "old_price": 80,
      "price": 50,
    },
    {
      "name": "Shoe 2",
      "picture": "images/products/shoe2.jpg",
      "old_price": 80,
      "price": 50,
    },
    {
      "name": "Shoe 3",
      "picture": "images/products/shoe3.jpg",
      "old_price": 80,
      "price": 50,
    },
    {
      "name": "Skt 1",
      "picture": "images/products/skt1.jpg",
      "old_price": 250,
      "price": 100,
    },
    {
      "name": "Skt 2",
      "picture": "images/products/skt2.jpg",
      "old_price": 320,
      "price": 175,
    }
  ];

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        itemCount: product_list.length,
        gridDelegate:
            new SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
        itemBuilder: (BuildContext context, int index) {
          return Single_prod(
            prod_name: product_list[index]['name'],
            prod_picture: product_list[index]['picture'],
            prod_old_price: product_list[index]['old_price'],
            prod_price: product_list[index]['price'],
          );
        });
  }
}

class Single_prod extends StatelessWidget {
  final prod_name;
  final prod_picture;
  final prod_old_price;
  final prod_price;

  Single_prod({
    this.prod_name,
    this.prod_picture,
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
                  builder: (context) => new ProductDetails(
                        //get the details of products selected
                        product_detail_name: prod_name,
                        product_detail_new_price: prod_price,
                        product_detail_old_price: prod_old_price,
                        product_detail_picture: prod_picture,
                      ))),
              child: GridTile(
                footer: Container(
                  color: Colors.white70,
                  child: new Row(children: <Widget>[
                    Expanded(
                      child: Text(prod_name, style: TextStyle(fontWeight: FontWeight.bold, fontSize: 16.0),),
                    ),

                    new Text("\$${prod_price}", style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),)
                  ],)
                ),
                child: Image.asset(
                  prod_picture,
                  fit: BoxFit.cover,
                ),
              ),
            ),
          )),
    );
  }
}
