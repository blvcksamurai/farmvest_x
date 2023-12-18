// ignore_for_file: prefer_const_constructors

import 'package:farmvest_x/widgets/custom_divider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_styles.dart';
import '../widgets/profile_item.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.30,
            color: Styles.primaryColor,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Stack(
                  children: [
                    Container(
                      height: 180,
                      width: 200,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(9.0),
                      child: Container(
                        margin: EdgeInsets.only(top: 2.0, left: 2.0),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                        ),
                        height: 145,
                        width: 145,
                        child: Image(
                          fit: BoxFit.contain,
                          image: AssetImage('assets/images/profile_pic.png'),
                        ),
                      ),
                    ),
                    Container(
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: Colors.transparent,
                      ),
                      height: 180,
                      child: SvgPicture.asset(
                        'assets/images/Subtract.svg',
                        height: 180,
                      ),
                    ),
                    Positioned(
                      left: 133,
                      top: 60,
                      child: IconButton(
                          onPressed: () {},
                          icon:
                              SvgPicture.asset('assets/images/camera_btn.svg')),
                    )
                  ],
                ),
                Text(
                  'Sola Brown  ',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 21,
                    fontWeight: FontWeight.w600,
                    height: 0,
                    letterSpacing: -0.33,
                  ),
                ),
                Text(
                  'solabrown@gmail.com',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 14,
                    fontWeight: FontWeight.w400,
                    height: 0,
                    letterSpacing: -0.33,
                  ),
                )
              ],
            ),
          ),
          SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: EdgeInsets.symmetric(horizontal: 10),
                child: Row(
                  children: [
                    SvgPicture.asset('assets/images/double_card.svg'),
                    SizedBox(width: 10),
                    Text(
                      'Invest',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Styles.primaryColor,
                        fontSize: 18,
                        fontWeight: FontWeight.w500,
                        height: 0.06,
                        letterSpacing: 0.50,
                      ),
                    )
                  ],
                ),
              ),
              Text(
                'My investments       ',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF7E7E7E),
                  fontSize: 14,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0.07,
                  letterSpacing: 0.50,
                ),
              ),
            ],
          ),
          SizedBox(height: 10),
          CustomDivider(),
          ProfileItem(
            text: 'Edit Profile',
            image: 'assets/images/pencil.svg',
          ),
          CustomDivider(),
          ProfileItem(
            text: 'Bank Details',
            image: 'assets/images/pencil.svg',
          ),
          CustomDivider(),
          ProfileItem(
            text: 'Bookmarks',
            image: 'assets/images/pencil.svg',
          ),
          CustomDivider(),
          ProfileItem(
            text: 'Notifications',
            image: 'assets/images/pencil.svg',
          ),
          CustomDivider(),
          ProfileItem(
            text: 'Referrals',
            image: 'assets/images/pencil.svg',
          ),
          CustomDivider(),
          ProfileItem(
            text: 'Support',
            image: 'assets/images/pencil.svg',
          ),
          CustomDivider(),
        ],
      ),
    );
  }
}
