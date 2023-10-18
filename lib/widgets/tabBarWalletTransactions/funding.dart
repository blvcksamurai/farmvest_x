import 'package:farmvest_x/widgets/custom_divider.dart';
import 'package:flutter/material.dart';

import '../recent_transactions.dart';

class FundingTab extends StatelessWidget {
  const FundingTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 10),
      child: ListView(
        children: [
          SizedBox(height: 20),
          RecentTransactions(),
          RecentTransactions(),
          RecentTransactions(),
          RecentTransactions(),
          CustomDivider(),
        ],
      ),
    );
  }
}
