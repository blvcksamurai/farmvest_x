// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'dart:ui';

import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class FarmInventoryCard extends StatelessWidget {
  const FarmInventoryCard({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          margin: EdgeInsets.only(left: 20, bottom: 15, top: 0, right: 20),
          width: 390,
          height: 131,
          decoration: BoxDecoration(
              color: Styles.formColor, borderRadius: BorderRadius.circular(15)),
        ),
        Positioned(
          left: 30,
          top: 20,
          child: Row(
            children: [
              Container(
                width: 98,
                height: 92,
                margin: EdgeInsets.fromLTRB(0, 0, 10, 0),
                decoration: ShapeDecoration(
                  image: DecorationImage(
                    image: AssetImage('assets/images/maize.png'),
                    fit: BoxFit.fill,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      children: [
                        TextSpan(
                          text: 'FARM\n',
                          style: TextStyle(
                            color: Styles.primaryColor,
                            fontSize: 13,
                            height: 0,
                          ),
                        ),
                        TextSpan(
                          text: 'Maize Farm, Ijesha, Osun',
                          style: TextStyle(
                            color: Styles.secondary,
                            fontSize: 16,
                            fontFamily: 'Poppins2',
                            height: 0,
                            letterSpacing: -0.33,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(children: [
                          TextSpan(
                            text: 'N25,000\n',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                          TextSpan(
                            text: '12 Months',
                            style: TextStyle(
                              color: Color(0xFF5D5D5D),
                              fontSize: 14,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
                              height: 0,
                            ),
                          ),
                        ]),
                      ),
                    ],
                  )
                ],
              ),
            ],
          ),
        ),
        Positioned(
            right: 30,
            top: 60,
            child: Stack(
              children: [
                Container(
                  color: Colors.transparent,
                  height: 70,
                  width: 150,
                ),
                Positioned(
                  right: 0,
                  child: Wrap(
                    direction: Axis.horizontal,
                    children: [
                      Text(
                        '45',
                        style: TextStyle(
                          color: Styles.primaryColor,
                          fontSize: 40,
                          fontFamily: 'Poppins2',
                        ),
                      ),
                      Text(
                        '%',
                        style: TextStyle(
                            fontSize: 24,
                            color: Styles.primaryColor,
                            fontFamily: 'Poppins2',
                            fontFeatures: [FontFeature.subscripts()]),
                      )
                    ],
                  ),
                ),
                Positioned(
                    right: 5,
                    top: 45,
                    child: Text(
                      'Return on investment',
                      style: TextStyle(
                        color: Color(0xFF5D5D5D),
                        fontSize: 12,
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ))
              ],
            ))
      ],
    );
  }
}
