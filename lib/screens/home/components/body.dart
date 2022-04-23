import 'package:flutter/material.dart';

import '../../../components/Category.dart';
import '../../../size_config.dart';
// import '../data.dart';
import 'categories.dart';
import 'discount_banner.dart';
import 'home_header.dart';
import 'popular_product.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(20)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenWidth(10)),
            CustomSliderWidget(
              items: [
                "assets/images/slide_1.jpg",
                "assets/images/slide_2.jpg",
                "assets/images/slide_3.jpg"
              ],
            ),
            // SingleChildScrollView(
            //   scrollDirection: Axis.horizontal,
            //   child: Padding(
            //     padding: const EdgeInsets.only(left: 5.0),
            //     child: Row(
            //       children: <Widget>[
            //         //Create a category widget for each category
            //         ...StoryViewData.map(
            //           (category) => Category(
            //             name: category.name,
            //             img: category.img,
            //           ),
            //         ),
            //       ],
            //     ),
            //   ),
            // ),
            Categories(),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(30)),
            PopularProducts(),
            SizedBox(height: getProportionateScreenWidth(30)),
          ],
        ),
      ),
    );
  }
}
