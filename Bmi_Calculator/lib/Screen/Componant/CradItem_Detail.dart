import 'package:flutter/material.dart';

// ignore: camel_case_types
class Card_Detail extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final String Lable;
  final IconData icon;
  const Card_Detail({
    Key key,
    // ignore: non_constant_identifier_names
    this.Lable,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Icon(
          icon,
          size: 80,
        ),
        SizedBox(
          height: 15,
        ),
        Text(
          Lable,
          style: TextStyle(color: Color(0xFF8D8E98), fontSize: 18),
        ),
      ],
    );
  }
}

class CardItem extends StatelessWidget {
  // ignore: non_constant_identifier_names
  final Color Card_color;
  // ignore: non_constant_identifier_names
  final Widget Card_child;
  final Function pressed;
  const CardItem({
    Key key,
    // ignore: non_constant_identifier_names
    @required this.Card_color,
    // ignore: non_constant_identifier_names
    @required this.Card_child,
    this.pressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: pressed,
      child: Container(
        child: Card_child,
        margin: EdgeInsets.all(13),
        decoration: BoxDecoration(
            color: Card_color, borderRadius: BorderRadius.circular(10)),
      ),
    );
  }
}
