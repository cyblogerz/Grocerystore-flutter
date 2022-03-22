import 'package:flutter/material.dart';

class ProductPage extends StatelessWidget {
  final String name;
  final String url;
  final String price;

  const ProductPage(
      {Key? key, required this.name, required this.url, required this.price})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        title: Text(
          "Product Page",
          style: TextStyle(color: Colors.black),
        ),
      ),
      body: Container(),
    );
  }
}
