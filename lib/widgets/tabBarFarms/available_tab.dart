// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:farmvest_x/widgets/tab_available/available_transactions.dart';
import 'package:flutter/material.dart';

import '../custom_search_bar.dart';
import '../farm_inventory_card.dart';

class AvailableTab extends StatelessWidget {
  const AvailableTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      children: [
        CustomSearchBar(),
        GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => const AvailableTransaction()),
              );
            },
            child: FarmInventoryCard()),
        FarmInventoryCard(),
        FarmInventoryCard(),
        SizedBox(height: 40)
      ],
    );
  }
}
