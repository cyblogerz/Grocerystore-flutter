import 'package:flutter/material.dart';

class Category extends StatelessWidget {
  final String name;
  final String img;

  const Category({Key? key, required this.name, required this.img})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 10),
      child: Column(children: <Widget>[
        SizedBox(
          height: 10.0,
        ),
        GestureDetector(
          onTap: () {},
          child: Container(
            width: 60,
            height: 60,
            decoration: BoxDecoration(
              // borderRadius: BorderRadius.all(Radius.circular(20)),
              shape: BoxShape.circle,
              boxShadow: [
                BoxShadow(
                  color: Colors.green.withOpacity(0.2),
                  spreadRadius: 2,
                  blurRadius: 8,
                  offset: Offset(0, 7),
                ),
              ],
              gradient: LinearGradient(
                colors: [Colors.greenAccent, Colors.green],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
            ),
            child: Padding(
              padding: const EdgeInsets.all(2.0),
              child: Container(
                height: 36,
                width: 36,
                decoration: BoxDecoration(
                  color: Colors.white,
                  // borderRadius: BorderRadius.circular(20),
                  shape: BoxShape.circle,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Container(
                    width: 30,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      image: DecorationImage(
                          image: AssetImage(img), fit: BoxFit.cover),
                    ),
                  ),
                ),
              ),
            ),
          ),
        ),
        Padding(
          // padding: const EdgeInsets.fromLTRB(10.0, 5.0, 8.0, 5.0),
          padding: EdgeInsets.all(8.0),
          child: Text(
            name,
            style: TextStyle(
              fontFamily: 'Metropolis',
              fontSize: 11.0,
              fontWeight: FontWeight.w700,
            ),
          ),
        )
      ]),
    );
  }
}
