// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:farmvest_x/widgets/tabBarWalletTransactions/withdrawals.dart';
import 'package:flutter/material.dart';
import '../utils/app_styles.dart';
import '../widgets/tabBarWalletTransactions/funding.dart';

class WalletTransactions extends StatefulWidget {
  const WalletTransactions({super.key});

  @override
  State<WalletTransactions> createState() => _WalletTransactionsState();
}

class _WalletTransactionsState extends State<WalletTransactions>
    with TickerProviderStateMixin {
  late TabController tabController;

  @override
  void initState() {
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Wallet Transactions',
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
      body: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(horizontal: 40, vertical: 10),
            child: Padding(
              padding: EdgeInsets.all(5),
              child: Container(
                height: 36,
                decoration: BoxDecoration(
                    color: Styles.formColor,
                    borderRadius: BorderRadius.circular(12)),
                child: TabBar(
                    controller: tabController,
                    indicatorWeight: 2,
                    indicatorSize: TabBarIndicatorSize.tab,
                    labelColor: Colors.white,
                    indicator: BoxDecoration(
                        color: Styles.secondary,
                        borderRadius: BorderRadius.circular(12)),
                    unselectedLabelColor: Colors.black,
                    tabs: [
                      Tab(
                        text: 'Funding',
                      ),
                      Tab(
                        text: 'Withdrawals',
                      )
                    ]),
              ),
            ),
          ),
          Expanded(
              child: TabBarView(controller: tabController, children: [
            FundingTab(),
            WithdrawalsTab(),
          ]))
        ],
      ),
    );
  }
}
