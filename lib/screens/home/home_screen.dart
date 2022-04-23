import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:shop_app/components/coustom_bottom_nav_bar.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/enums.dart';
import 'package:curved_navigation_bar/curved_navigation_bar.dart';
import 'package:shop_app/screens/cart/components/body.dart';
import 'package:shop_app/screens/favourites/favourites.dart';
import 'package:shop_app/screens/profile/components/body.dart';

import 'components/body.dart';

class HomeScreen extends StatefulWidget {
  static String routeName = "/home";

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final Color inActiveIconColor = Color(0xFFB6B6B6);

  int index = 0;

  List<Widget> _pages = [
    Body(),
    Favourite(),
    CartP(),
    Profile(),
  ];
  int _selectedIndex = 0;
  void _onItemTap(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: _pages.elementAt(_selectedIndex),
      bottomNavigationBar: CurvedNavigationBar(
        height: 60,
        backgroundColor: kPrimaryColor,
        items: [
          SvgPicture.asset(
            "assets/icons/Shop Icon.svg",
          ),
          SvgPicture.asset("assets/icons/Heart Icon.svg"),
          SvgPicture.asset("assets/icons/Chat bubble Icon.svg"),
          SvgPicture.asset(
            "assets/icons/User Icon.svg",
          ),
        ],
        onTap: _onItemTap,
        index: _selectedIndex,
      ),
    );
  }
}
