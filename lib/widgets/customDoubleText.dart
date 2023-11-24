// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomDoubleText extends StatelessWidget {
  String bigText;
  String amount;
  CustomDoubleText({
    required this.bigText,
    required this.amount,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          bigText,
          style: TextStyle(
            color: Color(0xFF5D5D5D),
            fontSize: 18,
            fontFamily: 'Poppins',
            fontWeight: FontWeight.w400,
            height: 0,
          ),
        ),
        Text(
          "\N$amount",
          style: TextStyle(
            color: Color(0xF22E5A1C),
            fontSize: 18,
            fontFamily: 'Poppins2',
            fontWeight: FontWeight.w700,
            height: 0,
          ),
        )
      ],
    );
  }
}
