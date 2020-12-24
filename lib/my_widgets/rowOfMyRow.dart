import 'package:flutter/material.dart';

class RowOfMyRow extends StatelessWidget {
  final String name;
  RowOfMyRow({Key key, this.name}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          width: 120.0,
          child: Text(this.name,
              style: TextStyle(fontSize: 19, fontWeight: FontWeight.w900)),
        ),
        // 'https://www.alsothecrumbsplease.com/wp-content/uploads/2018/10/Chocolate-Coffee-Cake-Recipe-5-500x375.jpg'),
        Icon(Icons.favorite_border, color: Colors.pinkAccent)
      ],
    );
  }
}
