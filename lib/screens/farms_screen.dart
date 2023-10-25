// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:farmvest_x/widgets/tabBarFarms/available_tab.dart';
import 'package:farmvest_x/widgets/tabBarFarms/sold_out_tab.dart';
import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class FarmsScreen extends StatefulWidget {
  const FarmsScreen({super.key});

  @override
  State<FarmsScreen> createState() => _FarmsScreenState();
}

class _FarmsScreenState extends State<FarmsScreen>
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
      body: Column(
        children: [
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.42,
                width: double.infinity,
                decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/status_bar_invest.png'),
                      fit: BoxFit.cover,
                    ),
                    borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(20),
                      bottomRight: Radius.circular(20),
                    )),
              ),
              Positioned(
                left: 20,
                top: 240,
                child: Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'INVEST\n',
                            style: TextStyle(
                              color: Colors.white,
                              fontSize: 32,
                              fontFamily: 'Poppins2',
                              height: 0,
                              letterSpacing: -0.33,
                            ),
                          ),
                          TextSpan(
                            text: 'Available farms',
                            style: TextStyle(
                              color: Color(0xFFF3FF93),
                              fontSize: 22,
                              fontFamily: 'Poppins2',
                              height: 0,
                              letterSpacing: -0.33,
                            ),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Positioned(
                  right: 20,
                  top: 45,
                  child: Icon(
                    Icons.notifications,
                    size: 45,
                    color: Styles.primaryColor,
                  ))
            ],
          ),
          Container(
            margin: EdgeInsets.only(left: 40, right: 40, top: 10, bottom: 0),
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
                        text: 'Available',
                      ),
                      Tab(
                        text: 'Sold Out',
                      )
                    ]),
              ),
            ),
          ),
          Expanded(
              child: TabBarView(controller: tabController, children: [
            AvailableTab(),
            SoldOutTab(),
          ]))
        ],
      ),
    );
  }
}
