// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:farmvest_x/screens/misc/about_screen.dart';
import 'package:farmvest_x/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';
import '../widgets/contactUsItems.dart';
import '../widgets/subheading.dart';
import '../widgets/support_item.dart';

class SupportScreen extends StatefulWidget {
  const SupportScreen({super.key});

  @override
  State<SupportScreen> createState() => _SupportScreenState();
}

class _SupportScreenState extends State<SupportScreen> {
  bool isSwitched = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.white,
          centerTitle: true,
          title: Text(
            'Support',
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
        body: ListView(
          children: [
            CustomDivider(),
            InkWell(
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const AboutScreen()),
                  );
                },
                child: SupportItem(text: 'About')),
            CustomDivider(),
            SupportItem(text: 'Faq'),
            CustomDivider(),
            SupportItem(text: 'Terms and Conditions'),
            CustomDivider(),
            SubHeading(text: 'Settings'),
            CustomDivider(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Enable Touch ID',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0.07,
                      letterSpacing: 0.50,
                    ),
                  ),
                  Switch(
                      value: isSwitched,
                      onChanged: (value) {
                        setState(() {
                          isSwitched = value;
                        });
                      })
                ],
              ),
            ),
            CustomDivider(),
            SubHeading(text: 'Contact Us'),
            CustomDivider(),
            ContactUsItems(
              image: 'assets/images/phone.png',
              text: '+234 (0) 806 784 2594',
            ),
            CustomDivider(),
            ContactUsItems(
              image: 'assets/images/message.png',
              text: 'Hello@farmvestng.com',
            ),
            CustomDivider(),
            ContactUsItems(
              image: 'assets/images/location.png',
              text: '2A Banjo wole Street, Lekki,\nphase 2,  Lagos',
            ),
            CustomDivider(),
            SizedBox(height: 10),
            SubHeading(text: 'Follow Us On'),
            CustomDivider(),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                children: [
                  SizedBox(
                    height: 24,
                    width: 30,
                    child: Image(
                      image: AssetImage('assets/images/Facebook_g.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image(
                      image: AssetImage('assets/images/Instagram.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                    width: 40,
                    child: Image(
                      image: AssetImage('assets/images/Twitter.png'),
                      fit: BoxFit.contain,
                    ),
                  ),
                ],
              ),
            ),
            CustomDivider(),
            SizedBox(height: 40)
          ],
        ));
  }
}
