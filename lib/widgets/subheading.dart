import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class SubHeading extends StatelessWidget {
  String text;
  SubHeading({
    required this.text,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: Text(
        text,
        style: TextStyle(
          color: Styles.primaryColor,
          fontSize: 18,
          fontWeight: FontWeight.w500,
          height: 0,
        ),
      ),
    );
  }
}
