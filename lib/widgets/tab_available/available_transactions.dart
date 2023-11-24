// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:farmvest_x/widgets/counter.dart';
import 'package:farmvest_x/widgets/custom_button.dart';
import 'package:farmvest_x/widgets/tab_available/moreInfo_TransactionScreen.dart';
import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';
import '../alertDialog/invest_dialog.dart';
import '../customDoubleText.dart';

class AvailableTransaction extends StatelessWidget {
  const AvailableTransaction({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: Text(
          'Transactions',
          style: TextStyle(
            color: Colors.black,
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
      body: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.symmetric(horizontal: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                height: 254,
                child: Image(
                    image: AssetImage(
                  'assets/images/rice.png',
                )),
              ),
              SizedBox(
                height: 20,
              ),
              SizedBox(
                width: 390,
                child: Text(
                  'According to research, rice is one of the most consumed staple food in Nigeria. FarmVest will be pathering with with these farmers by providing them with supplies to help them achieve maximum output.',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 12,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(height: 10),
              GestureDetector(
                onTap: () {
                  Navigator.push(
                      context,
                      PageRouteBuilder(
                          pageBuilder: (context, a, b) =>
                              MoreInfoTransactionScreen()));
                },
                child: Text(
                  'More Info',
                  style: TextStyle(
                    color: Color(0xFF4E9525),
                    fontSize: 14,
                    fontFamily: 'Poppins',
                    fontWeight: FontWeight.w400,
                    height: 0,
                  ),
                ),
              ),
              SizedBox(height: 10),
              Container(
                margin: EdgeInsets.fromLTRB(0, 0, 50, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomDoubleText(
                      bigText: 'Funding Amount',
                      amount: '85,000',
                    ),
                    Column(
                      children: [
                        Text(
                          'ROI',
                          style: TextStyle(
                            color: Color(0xFF5D5D5D),
                            fontSize: 18,
                            fontFamily: 'Poppins',
                            fontWeight: FontWeight.w400,
                            height: 0,
                          ),
                        ),
                        SizedBox(height: 10),
                        Text(
                          '20%',
                          style: TextStyle(
                            color: Color(0xF22E5A1C),
                            fontSize: 18,
                            fontFamily: 'Poppins2',
                            fontWeight: FontWeight.w700,
                            height: 0,
                          ),
                        )
                      ],
                    )
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 40, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomDoubleText(
                      bigText: 'Total Amount',
                      amount: '85,000',
                    ),
                    CustomCounter()
                  ],
                ),
              ),
              Container(
                margin: EdgeInsets.fromLTRB(0, 15, 10, 0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomDoubleText(
                      bigText: 'Total Returns',
                      amount: '17,000',
                    ),
                    CustomDoubleText(
                      bigText: 'Total Payback',
                      amount: '102,000',
                    ),
                  ],
                ),
              ),
              SizedBox(height: 40),
              InkWell(
                  onTap: () {
                    showDialog(
                        context: context,
                        builder: ((context) {
                          return InvestDialog();
                        }));
                  },
                  child: CustomButton(text: 'Invest')),
            ],
          ),
        ),
      ),
    );
  }
}
