// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'custom_divider.dart';

class RecentTransactions extends StatelessWidget {
  const RecentTransactions({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CustomDivider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  SvgPicture.asset(
                    'assets/images/check_mark.svg',
                    height: 30,
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        ' Card deposit',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontWeight: FontWeight.w500,
                          height: 0,
                        ),
                      ),
                      Text(
                        ' Jun 10, 2021',
                        style: TextStyle(
                          color: Color(0xff363131),
                          fontSize: 10,
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      )
                    ],
                  ),
                ],
              ),
              Text(
                'N20,000.00',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.bold,
                  height: 0,
                ),
              )
            ],
          ),
        )
      ],
    );
  }
}
