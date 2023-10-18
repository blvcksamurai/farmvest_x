// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../../utils/app_styles.dart';
import '../long_container.dart';
import '../portfolio_card.dart';

class TabHome1 extends StatefulWidget {
  const TabHome1({super.key});

  @override
  State<TabHome1> createState() => _TabHome1State();
}

class _TabHome1State extends State<TabHome1> {
  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        SizedBox(
          height: 20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            PortfolioCard(),
            PortfolioCard(),
          ],
        ),
        SizedBox(
          height: 10,
        ),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'CREATE A GREEN FUTURE',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xFF2E5A1C),
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
                letterSpacing: -0.33,
              ),
            )),
        SizedBox(height: 10),
        LongContainer(),
        SizedBox(height: 10),
        Container(
            padding: EdgeInsets.symmetric(horizontal: 10),
            child: Text(
              'Quick Actions',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Color(0xFF2E5A1C),
                fontSize: 12,
                fontWeight: FontWeight.w500,
                height: 0,
                letterSpacing: -0.33,
              ),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 1, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              QuickActionItems(),
              QuickActionItems(),
              QuickActionItems(),
            ],
          ),
        ),
      ],
    );
  }
}
