// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:farmvest_x/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import '../utils/app_styles.dart';
import '../widgets/card_details_modal.dart';

class FundWallet extends StatelessWidget {
  const FundWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.bgColor,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        centerTitle: true,
        title: Text(
          'Fund Wallet',
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
      body: SafeArea(
        child: Container(
          margin: EdgeInsets.symmetric(vertical: 40, horizontal: 20),
          child: ListView(
            children: [
              Stack(
                children: [
                  Container(
                    width: 367,
                    height: 70,
                    decoration: ShapeDecoration(
                      color: Color(0xFFF2F2F2),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                  ),
                  Positioned(
                    left: 12,
                    top: 5,
                    child: Text(
                      'Wallet Balance',
                      textAlign: TextAlign.left,
                      style: TextStyle(
                        color: Color(0xFF7E7E7E),
                        fontSize: 15,
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                      left: 12,
                      top: 30,
                      child: Text(
                        'N2,500,000.00',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w700,
                          height: 0,
                        ),
                      ))
                ],
              ),
              SizedBox(
                height: 40,
              ),
              TextField(
                style: TextStyle(
                    fontFamily: 'Poppins2', fontSize: 20, color: Colors.black),
                decoration: InputDecoration(
                    prefixText: 'N ',
                    prefixStyle: TextStyle(
                        fontFamily: 'Poppins2',
                        fontSize: 20,
                        color: Colors.black),
                    border: OutlineInputBorder(
                        borderSide:
                            BorderSide(color: Color(0xFFACA9A9), width: 1),
                        borderRadius: BorderRadius.circular(6)),
                    hintText: '0.00',
                    hintStyle: TextStyle(
                      fontFamily: 'Poppins2',
                      fontSize: 20,
                    )),
                keyboardType: TextInputType.numberWithOptions(decimal: true),
                inputFormatters: [FilteringTextInputFormatter.digitsOnly],
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    height: 1,
                  ),
                  Text(
                    'ENTER VALUE',
                    style: TextStyle(
                      color: Color(0xFF7E7E7E),
                      fontSize: 14,
                      fontFamily: 'Poppins',
                      fontWeight: FontWeight.w600,
                      height: 0,
                    ),
                  ),
                ],
              ),
              InkWell(
                onTap: () {
                  showModalBottomSheet(
                      context: context,
                      builder: (BuildContext context) {
                        return CardDetailsModal();
                      });
                },
                child: Container(
                  margin: EdgeInsets.only(top: 60),
                  width: 323,
                  height: 94,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('assets/images/payment.png'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              ),
              Container(
                margin: EdgeInsets.only(top: 110),
                child: CustomButton(text: 'Fund Wallet'),
              )
            ],
          ),
        ),
      ),
    );
  }
}
