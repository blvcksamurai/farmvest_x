// ignore_for_file: prefer_const_constructors

import 'package:farmvest_x/screens/home_screen.dart';
import 'package:farmvest_x/utils/app_styles.dart';
import 'package:farmvest_x/widgets/custom_bottom_nav_bar.dart';
import 'package:farmvest_x/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class InvestmentSuccessful extends StatelessWidget {
  const InvestmentSuccessful({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        margin: EdgeInsets.fromLTRB(20, 40, 20, 10),
        child: ListView(children: [
          Text(
            "You're Doing Well",
            style: TextStyle(
              color: Colors.black,
              fontSize: 24,
              fontFamily: 'Poppins2',
              fontWeight: FontWeight.w700,
              height: 0,
            ),
          ),
          SizedBox(height: 40),
          Text(
            'Your payment was \nsuccessful',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Styles.primaryColor,
              fontSize: 18,
              fontWeight: FontWeight.w600,
              height: 0,
            ),
          ),
          Image(
            image: AssetImage('assets/images/payment_successful.png'),
            height: 350,
            width: 250,
          ),
          SizedBox(
            height: 40,
          ),
          Text.rich(
            TextSpan(
              children: [
                TextSpan(
                  text:
                      "You’re on your way fo financial freedom. The \nlight is ",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: 'GREEN',
                  style: TextStyle(
                    color: Styles.primaryColor,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
                TextSpan(
                  text: ' at the end of the tunnel.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 14,
                    fontWeight: FontWeight.w600,
                    height: 0,
                  ),
                ),
              ],
            ),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 80),
          InkWell(
              onTap: () {
                Navigator.pushAndRemoveUntil<dynamic>(
                  context,
                  MaterialPageRoute<dynamic>(
                    builder: (BuildContext context) => CustomBottomNavBar(),
                  ),
                  (route) => false,
                );
              },
              child: CustomButton(text: 'Done'))
        ]),
      ),
    );
  }
}
