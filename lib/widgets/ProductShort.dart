import 'package:flutter/material.dart';

class ProductShort extends StatelessWidget {
  final String url;
  final String name;
  final String price;

  const ProductShort(
      {Key? key, required this.url, required this.name, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: (() => Navigator.pushNamed(context, "/product")),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          color: Colors.blueGrey,
        ),
        child: Column(
          //Create a product card
          children: <Widget>[
            Container(
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                image: DecorationImage(image: NetworkImage(url)),
              ),
            ),
            Text(
              name,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              "Rp" + price,
              style: TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
