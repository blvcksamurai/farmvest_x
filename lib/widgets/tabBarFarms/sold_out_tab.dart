// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';

import '../farm_inventory_card.dart';

class SoldOutTab extends StatelessWidget {
  const SoldOutTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        FarmInventoryCard(),
        FarmInventoryCard(),
        SizedBox(height: 60)
      ],
    );
  }
}
