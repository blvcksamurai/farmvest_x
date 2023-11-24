// ignore_for_file: prefer_const_constructors, sized_box_for_whitespace, prefer_const_literals_to_create_immutables

import 'package:farmvest_x/widgets/tabbarPage/Portfollio_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../utils/app_styles.dart';
import '../widgets/tabbarPage/Wallet_tab.dart';

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
          Stack(
            children: [
              Container(
                height: MediaQuery.of(context).size.height * 0.35,
                width: double.infinity,
                child: Image(
                  image: AssetImage('assets/images/status_bar_home.png'),
                  fit: BoxFit.cover,
                ),
              ),
              Positioned(
                left: 20,
                top: 40,
                child: Column(
                  children: [
                    Text.rich(
                      TextSpan(
                        children: [
                          TextSpan(
                            text: 'Tife,\n',
                            style: TextStyle(
                              color: Styles.primaryColor,
                              fontSize: 32,
                              fontFamily: 'Poppins2',
                              fontWeight: FontWeight.normal,
                              height: 0,
                              letterSpacing: -0.33,
                            ),
                          ),
                          TextSpan(
                            text: 'Good Morning !',
                            style: TextStyle(
                              color: Colors.black,
                              fontSize: 15,
                              fontFamily: 'Poppins',
                              fontWeight: FontWeight.w400,
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
                  child: Column(
                    children: [
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 20),
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
                                    text: 'Portfollio',
                                  ),
                                  Tab(
                                    text: 'Wallet',
                                  )
                                ]),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Expanded(
                    child: TabBarView(controller: tabController, children: [
                  Portfollio(),
                  Wallet(),
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
    return Container(
      width: 115,
      height: 37.71,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 115,
              height: 37.71,
              decoration: ShapeDecoration(
                color: Color(0x604E9524),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
            ),
          ),
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 115,
              height: 4.19,
              decoration: ShapeDecoration(
                color: Color(0xFF4E9525),
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(6)),
              ),
            ),
          ),
          Positioned(
              left: 3,
              top: 12.36,
              child: SvgPicture.asset(
                'assets/images/running_time.svg',
                height: 12,
              )),
          Positioned(
            left: 18,
            top: 12.36,
            child: SizedBox(
              width: 95,
              height: 13,
              child: Text(
                'Update profile info',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF3F3C3C),
                  fontSize: 10,
                  fontFamily: 'Poppins',
                  fontWeight: FontWeight.w400,
                  height: 0,
                  letterSpacing: -0.33,
                ),
              ),
            ),
          ),
        ],
      ),
    );
    // return Stack(
    //   children: [
    //     Container(
    //       height: 40,
    //       width: 125,
    //       decoration: BoxDecoration(
    //           color: Styles.quickColor,
    //           borderRadius: BorderRadius.only(
    //               bottomLeft: Radius.circular(10),
    //               bottomRight: Radius.circular(10))),
    //     ),
    //     Positioned(
    //         left: 0,
    //         top: 0,
    //         child: Container(
    //           height: 5,
    //           width: 125,
    //           decoration: BoxDecoration(
    //               color: Styles.subText,
    //               borderRadius: BorderRadius.only(
    //                   bottomLeft: Radius.circular(5),
    //                   bottomRight: Radius.circular(5))),
    //         )),
    //     Padding(
    //       padding: const EdgeInsets.symmetric(vertical: 10),
    //       child: Row(
    //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
    //         children: [
    //           SvgPicture.asset(
    //             'assets/images/running_time.svg',
    //             height: 11,
    //           ),
    //           Text(
    //             ' Update profile info',
    //             style: TextStyle(fontSize: 10),
    //           )
    //         ],
    //       ),
    //     )
    //   ],
    // );
  }
}
