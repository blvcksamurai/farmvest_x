import 'package:flutter/material.dart';

class SubData extends StatelessWidget {
  final String text;
  SubData({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: Colors.black,
        fontSize: 14,
        fontWeight: FontWeight.w400,
        height: 0,
        letterSpacing: 0.12,
      ),
    );
  }
}
