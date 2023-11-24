// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:farmvest_x/widgets/alertDialog/invest_dialog.dart';
import 'package:farmvest_x/widgets/custom_button.dart';
import 'package:flutter/material.dart';

import '../../utils/app_styles.dart';

class MoreInfoTransactionScreen extends StatelessWidget {
  const MoreInfoTransactionScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        centerTitle: true,
        title: const Text(
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
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 10),
        child: ListView(
          children: [
            Container(
              height: 125,
              width: double.infinity,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12),
                  image: DecorationImage(
                      image: AssetImage(
                        'assets/images/rice.png',
                      ),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: 20),
            SizedBox(
              height: 150,
              child: Text(
                'FarmVest will be pathering with with these farmers by providing them with supplies to help them achieve maximum output. \nFarmVest will be fully involved in the processing of this rice to the preminum quality we all love to have on our table. \n\nLast year; via the rice processing project, we constructed a rice mill, equipped with requirement for processing and packaging. \nThis year, we intend to increase our capacity and reach more Nigerians.',
                textAlign: TextAlign.justify,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 11.5,
                  fontWeight: FontWeight.normal,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 20),
            Text(
              'Benefits of Rice Farm',
              style: TextStyle(
                color: Styles.secondary,
                fontSize: 18,
                fontFamily: 'Poppins2',
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(
              child: Text(
                '1. This Rice Farm Investment Plan allows us to parner with rice farmers. \n2. It allows us to package rice for storage and processing. \n3. This Rice Funders get 20% return on every unit of investment. \n4. This Rice Farm Investment Plan allows us to parner with rice farmers.',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  height: 0,
                ),
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Why you should invest in the Rice Farm',
              style: TextStyle(
                color: Styles.primaryColor,
                fontSize: 18,
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            Text(
              'You put your money to work and get to make up to 20% ROI. \nIt takes 8 to 12 months to yield and package.',
              style: TextStyle(
                color: Colors.black,
                fontSize: 12,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
            SizedBox(height: 30),
            Text(
              'Investment Overview',
              style: TextStyle(
                color: Styles.secondary,
                fontSize: 18,
                fontWeight: FontWeight.w700,
                height: 0,
              ),
            ),
            SizedBox(height: 10),
            Container(
              width: 173,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'Unit Price : N85,000',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                      Text(
                        'Returns : 20%',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                          fontFamily: 'Poppins',
                          fontWeight: FontWeight.w400,
                          height: 0,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    'Duration : 8 months',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 12,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w400,
                      height: 0,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(height: 30),
            InkWell(
                onTap: () {
                  showDialog(
                      context: context,
                      builder: ((context) {
                        return InvestDialog();
                      }));
                },
                child: CustomButton(text: 'Invest')),
            SizedBox(height: 30),
          ],
        ),
      ),
    );
  }
}
