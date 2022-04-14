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
      backgroundColor: Colors.yellow,
      // floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      // extendBodyBehindAppBar: true,
      //Make an appbar with a back button and transparent background
      //make the stack behind the appbar
      body: Column(
        children: <Widget>[
          Expanded(
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: NetworkImage(url), fit: BoxFit.cover),
              ),
            ),
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              // height: MediaQuery.of(context).size.height * 0.2,
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
