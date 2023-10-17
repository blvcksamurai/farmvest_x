// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../utils/app_styles.dart';
import '../recent_transactions.dart';

class TabHome2 extends StatefulWidget {
  const TabHome2({super.key});

  @override
  State<TabHome2> createState() => _TabHome2State();
}

class _TabHome2State extends State<TabHome2> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          SizedBox(
            height: 10,
          ),
          Stack(
            children: [
              Center(
                child: Container(
                  height: 110,
                  width: 350,
                  decoration: BoxDecoration(
                      color: Styles.containerColor,
                      borderRadius: BorderRadius.circular(15)),
                ),
              ),
              Positioned(
                left: 35,
                top: 15,
                child: Text(
                  'Wallet Balance',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
              Positioned(
                left: 35,
                top: 44,
                child: Text(
                  'N20,000.00',
                  style: TextStyle(
                    color: Color(0xFFF3FF93),
                    fontSize: 20,
                    fontWeight: FontWeight.w300,
                    height: 0,
                  ),
                ),
              ),
              Positioned(
                left: 320,
                top: 10,
                child: SvgPicture.asset('assets/images/wallet.svg'),
              ),
              Positioned(
                left: 260,
                top: 69,
                child: Container(
                  width: 96,
                  height: 24,
                  child: Stack(children: [
                    Positioned(
                        left: 0,
                        top: 0,
                        child: Container(
                          width: 96,
                          height: 24,
                          decoration: ShapeDecoration(
                            color: Color(0xFFEDF0C7),
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(4)),
                          ),
                        )),
                    Positioned(
                      left: 3,
                      top: 4,
                      child: Text(
                        'Fund Wallet ',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 11,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w300,
                          height: 0,
                        ),
                      ),
                    ),
                    Positioned(
                      left: 74,
                      top: 2,
                      child:
                          SvgPicture.asset('assets/images/ri_funds-line.svg'),
                    )
                  ]),
                ),
              )
            ],
          ),
          SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              width: 350,
              height: 32,
              decoration: ShapeDecoration(
                color: Styles.secondary,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: Center(
                  child: Text(
                'View Account Number',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                  fontWeight: FontWeight.w500,
                  height: 0,
                ),
              )),
            ),
          ),
          SizedBox(height: 30),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Recent Transactions',
                style: TextStyle(
                  color: Styles.secondary,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              ),
              Text(
                'View All',
                style: TextStyle(
                  color: Styles.primaryColor,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                  height: 0,
                ),
              )
            ],
          ),
          SizedBox(
            height: 10,
          ),
          RecentTransactions(),
          RecentTransactions(),
          RecentTransactions(),
          RecentTransactions(),
          RecentTransactions(),
          SizedBox(height: 40)
        ],
      ),
    );
  }
}
