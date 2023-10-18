// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

import '../../screens/home_screen.dart';
import '../long_container.dart';
import '../portfolio_card.dart';

class Portfollio extends StatefulWidget {
  const Portfollio({super.key});

  @override
  State<Portfollio> createState() => _PortfollioState();
}

class _PortfollioState extends State<Portfollio> {
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
