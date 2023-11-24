// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';

class CustomSearchBar extends StatelessWidget {
  const CustomSearchBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        height: 45,
        margin: EdgeInsets.only(left: 20, top: 0, right: 20, bottom: 20),
        decoration: BoxDecoration(
          color: Color(0xffdadada),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            children: [
              Icon(
                Icons.search_rounded,
                size: 30,
                color: Color(0xff7e7e7e),
              ),
              Text(
                'Search for investments',
                style: TextStyle(
                    color: Color(0xff7e7e7e),
                    fontSize: 15,
                    fontWeight: FontWeight.w500),
              )
            ],
          ),
        ));
  }
}
