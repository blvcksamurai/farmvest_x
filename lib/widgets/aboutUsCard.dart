import 'package:farmvest_x/widgets/subheading.dart';
import 'package:flutter/material.dart';

import 'subData.dart';

class AboutUsCard extends StatelessWidget {
  final String text;
  final String subHeading;
  AboutUsCard({
    super.key,
    required this.text,
    required this.subHeading,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 5),
      height: 150,
      width: double.infinity,
      color: Colors.white,
      child: Column(
        children: [
          SizedBox(height: 5),
          SubHeading(text: subHeading),
          SizedBox(
            width: 360,
            child: SubData(text: text),
          ),
        ],
      ),
    );
  }
}
