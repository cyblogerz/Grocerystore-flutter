import 'package:flutter/material.dart';

class Favourite extends StatelessWidget {
  const Favourite({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: <Widget>[
        fav_list(),
        fav_list(),
        fav_list(),
      ],
    );
  }
}

class fav_list extends StatelessWidget {
  const fav_list({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
      child: Container(
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(10)),
        // color: Colors.grey
        child: ListTile(
          title: Text('Hello'),
          leading:
              Image(image: AssetImage('assets/images/ps4_console_blue_1.png')),
          subtitle: Text("\$50.0"),
          trailing: IconButton(onPressed: () => {}, icon: Icon(Icons.close)),
        ),
      ),
    );
  }
}
