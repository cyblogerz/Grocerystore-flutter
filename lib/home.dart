import 'dart:io';

import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:emart_1/widgets/ProductShort.dart';
import 'package:emart_1/widgets/SearchBar.dart';
import 'package:flutter/material.dart';

import 'data.dart';
import 'models/productModels.dart';
import 'widgets/Category.dart';

class Home extends StatelessWidget {
  const Home({Key? key}) : super(key: key);
  SizedBox spacing() {
    return SizedBox(
      width: 15.0,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(color: Colors.black),
        elevation: 0.0,
        backgroundColor: Colors.white,
        title: Text(
          "E-Mart",
          style: TextStyle(color: Colors.black),
        ),
        actions: <Widget>[
          IconButton(
            onPressed: () {},
            icon: Icon(Icons.notifications),
          ),
          IconButton(
            onPressed: () {},
            icon: Icon(
              Icons.shopping_cart,
            ),
          )
        ],
      ),
      drawer: Drawer(),
      body: ListView(
        children: <Widget>[
          SearchBar(),
          Container(
            //Get the size of screen
            height: MediaQuery.of(context).size.height * 0.25,
            margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(32),
                image: DecorationImage(
                    fit: BoxFit.cover,
                    image: NetworkImage(
                        "https://source.unsplash.com/VAb8gjs85a4"))),
          ),

          //Create a single child scroll view of a row of categories
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding: const EdgeInsets.only(left: 5.0),
              child: Row(
                children: <Widget>[
                  //Create a category widget for each category
                  ...StoryViewData.map(
                    (category) => Category(
                      name: category.name,
                      img: category.img,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 10, right: 10),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  "Popular",
                  style: TextStyle(
                    fontSize: 20,
                  ),
                ),
                TextButton(onPressed: () {}, child: Text("See All")),
              ],
            ),
          ),

          //get the width of the screen

          //Create a product widget for each product
          //Create a Grid of products
          GridView.count(
            childAspectRatio: 0.8,
            shrinkWrap: true,
            physics: NeverScrollableScrollPhysics(),
            crossAxisCount: 2,
            children: ProductData.map(
              (product) => ProductShort(
                url: product.img,
                name: product.name,
                price: product.price,
              ),
            ).toList(),
          ),
        ],
      ),
      bottomNavigationBar: CurvedNavigationBar(
        backgroundColor: Colors.blueAccent,
        items: <Widget>[
          Icon(Icons.home, size: 30),
          Icon(Icons.list, size: 30),
          Icon(Icons.compare_arrows, size: 30),
        ],
        onTap: (index) {
          //Handle button tap
        },
      ),
    );
  }
}
