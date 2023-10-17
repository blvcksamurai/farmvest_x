import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class PortfolioCard extends StatelessWidget {
  const PortfolioCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image(
          width: 185,
          height: 120,
          image: AssetImage('assets/images/portfolio_image.png'),
          fit: BoxFit.fill,
        ),
        Container(
          width: 185,
          height: 120,
          decoration: BoxDecoration(
              color: Styles.containerColor.withOpacity(0.62),
              borderRadius: BorderRadius.circular(12)),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Total Investments',
                style: TextStyle(
                    fontSize: 13,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 35,
              ),
              Text(
                'N120,000.00',
                style: TextStyle(
                    fontSize: 20,
                    color: Styles.buttonTextColor,
                    fontWeight: FontWeight.bold),
              ),
            ],
          ),
        )
      ],
    );
  }
}
