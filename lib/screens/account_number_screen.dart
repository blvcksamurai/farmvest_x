// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:farmvest_x/utils/app_styles.dart';
import 'package:farmvest_x/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../widgets/custom_button.dart';

class AccountNumberScreen extends StatefulWidget {
  const AccountNumberScreen({super.key});

  @override
  State<AccountNumberScreen> createState() => _AccountNumberScreenState();
}

class _AccountNumberScreenState extends State<AccountNumberScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Transactions',
          style: TextStyle(
            color: Styles.secondary,
            fontSize: 20,
            fontFamily: 'Poppins2',
            fontWeight: FontWeight.normal,
            height: 0,
            letterSpacing: -0.33,
          ),
        ),
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: Icon(
            Icons.arrow_back,
            color: Styles.primaryColor,
          ),
        ),
      ),
      body: SafeArea(
          child: Container(
        margin: EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Center(
              child: Container(
                margin: EdgeInsets.symmetric(vertical: 15),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: Styles.quickColor,
                ),
                child: Padding(
                  padding: const EdgeInsets.all(11.0),
                  child: SvgPicture.asset(
                    'assets/images/bank.svg',
                  ),
                ),
              ),
            ),
            Center(
              child: Text(
                'Wallet Account Details',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 10,
                  fontFamily: 'Poppins2',
                  height: 0,
                ),
              ),
            ),
            Center(
              child: Text(
                'Card deposit',
                style: TextStyle(
                  color: Color(0xFF363131),
                  fontSize: 10,
                  fontWeight: FontWeight.w300,
                  height: 0,
                ),
              ),
            ),
            SizedBox(
              height: 40,
            ),
            Text(
              'WEMA BANK',
              textAlign: TextAlign.left,
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Poppins2',
              ),
            ),
            CustomDivider(),
            SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  '7654321012',
                  style: TextStyle(
                    color: Color(0xFF363131),
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                ),
                InkWell(
                  onTap: () {},
                  child: Container(
                    height: 18,
                    width: 41,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(6),
                      color: Styles.quickColor,
                    ),
                    child: Text(
                      'Copy',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF436B33),
                        fontSize: 10,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                )
              ],
            ),
            SizedBox(height: 10),
            CustomDivider(),
            SizedBox(height: 100),
            CustomButton(text: 'Done')
          ],
        ),
      )),
    );
  }
}
