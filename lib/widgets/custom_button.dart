import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({
    super.key,
    required this.text,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 334,
        height: 38,
        decoration: BoxDecoration(
            color: Styles.primaryColor, borderRadius: BorderRadius.circular(4)),
        child: Center(
          child: Text(
            text,
            style: TextStyle(
              color: Styles.formColor,
              fontSize: 14,
              fontFamily: 'Poppins2',
              height: 0,
            ),
          ),
        ),
      ),
    );
  }
}
