// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class ContactUsItems extends StatelessWidget {
  String image;
  String text;
  ContactUsItems({
    required this.image,
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 5),
      child: Row(children: [
        Image(image: AssetImage(image)),
        SizedBox(width: 20),
        Text(
          text,
          style: TextStyle(
            color: Colors.black,
            fontSize: 14,
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        )
      ]),
    );
  }
}
