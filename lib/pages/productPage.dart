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
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton:
          Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
        Padding(
          padding: const EdgeInsets.only(left: 35.0),
          child: FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(Icons.favorite_border),
          ),
        ),
        FloatingActionButton(
            backgroundColor: Colors.green,
            onPressed: () {},
            child: Icon(Icons.shopping_bag)),
      ]),
      // extendBodyBehindAppBar: true,
      appBar: AppBar(
        foregroundColor: Colors.red,
        elevation: 0.0,
        iconTheme: IconThemeData(color: Colors.black),
        backgroundColor: Colors.white,
        actions: [
          IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart))
        ],
      ),
      extendBody: true,
      body: Stack(
        children: <Widget>[
          Container(
            height: MediaQuery.of(context).size.height * 0.4,
            decoration: BoxDecoration(
              image:
                  DecorationImage(image: NetworkImage(url), fit: BoxFit.cover),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              padding: EdgeInsets.all(13),
              child: Column(
                children: <Widget>[
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Text(
                        name,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                      Text(
                        '\$' + price,
                        style: TextStyle(
                            fontSize: 20, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Text("Hello kjsdnkjhekjh efhw ihfw"),
                ],
              ),
              height: MediaQuery.of(context).size.height * 0.55,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30),
                      topRight: Radius.circular(30))),
            ),
          ),
        ],
      ),
    );
  }
}
