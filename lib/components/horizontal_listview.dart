import 'package:flutter/material.dart';

class HorizontalList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100.0,
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          Category(
            image_location: 'images/cats/accessories.png',
            image_caption: 'Accessoires',
          ),

          Category(
            image_location: 'images/cats/dress.jpg',
            image_caption: 'Dress',
          ),

          Category(
            image_location: 'images/cats/formal.png',
            image_caption: 'Formal',
          ),

          Category(
            image_location: 'images/cats/informal.jpg',
            image_caption: 'Informal',
          ),

          Category(
            image_location: 'images/cats/jeans.jpg',
            image_caption: 'Jeans',
          ),

          Category(
            image_location: 'images/cats/shoes.jpg',
            image_caption: 'Shoes',
          ),

          Category(
            image_location: 'images/cats/tshirt.jpg',
            image_caption: 'Tshirt',
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
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {},
        child: Container(
            width: 100.0,
            child: ListTile(
              title: Image.asset(
                image_location,
                width: 100.0,
                height: 80.0,
              ),
              subtitle: Container(
                alignment: Alignment.topCenter,
                child: Text(image_caption, style: new TextStyle(fontSize: 12.0),),
              )
            ),
        ),
      ),
    );
  }
}
