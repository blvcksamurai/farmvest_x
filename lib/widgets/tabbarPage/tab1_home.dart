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
            style: TextStyle(color: Styles.secondary, fontSize: 15),
            textAlign: TextAlign.left,
          ),
        ),
        SizedBox(height: 10),
        LongContainer(),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10),
          child: Text(
            'Quick Actions',
            style: TextStyle(
                color: Styles.secondary,
                fontSize: 11,
                fontWeight: FontWeight.bold),
            textAlign: TextAlign.left,
          ),
        ),
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
