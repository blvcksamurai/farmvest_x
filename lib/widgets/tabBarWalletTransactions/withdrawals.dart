import 'package:flutter/material.dart';

import '../custom_divider.dart';
import '../recent_transactions.dart';

class WithdrawalsTab extends StatelessWidget {
  const WithdrawalsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            SizedBox(height: 20),
            RecentTransactions(),
            CustomDivider(),
          ],
        ),
      ),
    );
  }
}
