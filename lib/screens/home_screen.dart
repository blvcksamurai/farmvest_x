// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:farmvest_x/widgets/tabbarPage/tab1_home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_styles.dart';
import '../widgets/long_container.dart';
import '../widgets/portfolio_card.dart';
import '../widgets/tabbarPage/tab2_home.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> with TickerProviderStateMixin {
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
      backgroundColor: Styles.bgColor,
      body: ListView(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.35,
            child: Image(
              image: AssetImage('assets/images/status_bar_home.png'),
              fit: BoxFit.cover,
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(horizontal: 5),
            height: MediaQuery.of(context).size.height * 0.55,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SizedBox(
                  height: 10,
                ),
                //Tab Controllers
                Center(
                  child: Container(
                    // height: 35,
                    width: MediaQuery.of(context).size.width * 0.80,
                    decoration: BoxDecoration(
                      color: Styles.formColor,
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(5),
                          child: TabBar(
                              controller: tabController,
                              indicatorWeight: 2,
                              indicatorSize: TabBarIndicatorSize.tab,
                              labelColor: Colors.white,
                              indicator: BoxDecoration(
                                  color: Styles.secondary,
                                  borderRadius: BorderRadius.circular(5)),
                              unselectedLabelColor: Colors.black,
                              tabs: [
                                Tab(
                                  text: 'Tab1',
                                ),
                                Tab(
                                  text: 'Tab1',
                                )
                              ]),
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                    child: TabBarView(controller: tabController, children: [
                  TabHome1(),
                  TabHome2(),
                ]))

                //Place here
                //End here
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class QuickActionItems extends StatelessWidget {
  const QuickActionItems({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 40,
          width: 125,
          decoration: BoxDecoration(
              color: Styles.quickColor,
              borderRadius: BorderRadius.only(
                  bottomLeft: Radius.circular(10),
                  bottomRight: Radius.circular(10))),
        ),
        Positioned(
            left: 0,
            top: 0,
            child: Container(
              height: 5,
              width: 125,
              decoration: BoxDecoration(
                  color: Styles.subText,
                  borderRadius: BorderRadius.only(
                      bottomLeft: Radius.circular(5),
                      bottomRight: Radius.circular(5))),
            )),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              SvgPicture.asset(
                'assets/images/running_time.svg',
                height: 11,
              ),
              Text(
                ' Update profile info',
                style: TextStyle(fontSize: 11),
              )
            ],
          ),
        )
      ],
    );
  }
}
