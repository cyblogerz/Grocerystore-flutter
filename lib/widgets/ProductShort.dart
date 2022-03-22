import 'package:flutter/material.dart';

import '../pages/productPage.dart';

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
      onTap: (() => Navigator.push(
          context,
          MaterialPageRoute(
              builder: (context) =>
                  ProductPage(name: name, url: url, price: price)))),
      child: Container(
        margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
        width: MediaQuery.of(context).size.width * 0.4,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.grey.withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 10,
              offset: Offset(10, 3), // changes position of shadow
            ),
          ],
          borderRadius: BorderRadius.circular(20),
          color: Colors.white,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
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
            Padding(
              padding: EdgeInsets.only(right: 10.0, bottom: 10.0),
              child: Align(
                alignment: Alignment.topRight,
                child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(20),
                      ),
                    ),
                    child: Icon(Icons.add)),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
