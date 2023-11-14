// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:farmvest_x/screens/home_screen.dart';
import 'package:farmvest_x/screens/payment%20status/investment_successful.dart';
import 'package:farmvest_x/utils/app_styles.dart';
import 'package:flutter/material.dart';

class InvestDialog extends StatefulWidget {
  const InvestDialog({super.key});

  @override
  State<InvestDialog> createState() => _InvestDialogState();
}

class _InvestDialogState extends State<InvestDialog> {
  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      backgroundColor: Styles.secondary,
      title: Container(
        height: 60,
        width: 250,
        child: Column(children: [
          Text(
            'Confirm Investment\n\n',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 20,
              fontFamily: 'Poppins2',
              fontWeight: FontWeight.w700,
              height: 0.05,
              letterSpacing: 0.50,
            ),
          ),
          Text(
            '\nAre you sure you want to invest in this farm?',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Colors.white,
              fontSize: 14,
              fontWeight: FontWeight.w400,
              letterSpacing: 0.50,
            ),
          )
        ]),
      ),
      actions: [
        TextButton(
            onPressed: () {
              Navigator.pushAndRemoveUntil<dynamic>(
                context,
                MaterialPageRoute<dynamic>(
                  builder: (BuildContext context) => InvestmentSuccessful(),
                ),
                (route) => false,
              );
            },
            child: Text(
              'Confirm',
              style: TextStyle(color: Colors.white),
            )),
        TextButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: Text(
              'Cancel',
              style: TextStyle(color: Colors.white),
            )),
      ],
    );
  }
}
