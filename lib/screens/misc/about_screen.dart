import 'package:farmvest_x/utils/app_styles.dart';
import 'package:farmvest_x/widgets/subheading.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../../widgets/aboutUsCard.dart';
import '../../widgets/subData.dart';

class AboutScreen extends StatelessWidget {
  const AboutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Styles.formColor,
      appBar: AppBar(
        backgroundColor: Styles.formColor,
        centerTitle: true,
        title: Text(
          'Support',
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
      body: ListView(
        children: [
          Container(
            child: Column(children: [
              SvgPicture.asset('assets/images/farmvest_logo.svg'),
              Text.rich(
                  TextSpan(children: [
                    TextSpan(
                      text: 'Farmvestng\n',
                      style: TextStyle(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.w600,
                        fontSize: 20,
                        height: 0,
                        letterSpacing: 0.25,
                      ),
                    ),
                    TextSpan(
                      text: 'Powered by Blvck\n',
                      style: TextStyle(
                        color: Styles.primaryColor,
                        fontWeight: FontWeight.normal,
                        fontSize: 11,
                        height: 0,
                      ),
                    ),
                  ]),
                  textAlign: TextAlign.left),
              AboutUsCard(
                subHeading: 'About Us',
                text:
                    'Farmvestng is a global Agritech company focused on conecting local farmers  to investors in order to get enough resourses to expand their production .',
              ),
              AboutUsCard(
                subHeading: 'Our Vision',
                text:
                    'To be the foremost digital agriculture platform \nin Africa admired for its impact on collaborative food production and boosting food security across the continent.',
              ),
              AboutUsCard(
                subHeading: 'Our Mission',
                text:
                    'To build an integrated farm system that is organic and sustainable in wealth creation, while providing employment both in rural and urban areas through Agri-tech.',
              ),
              SubHeading(text: 'How it works'),
              SvgPicture.asset('assets/images/steps.svg'),
              SizedBox(
                height: 20,
              )
            ]),
          ),
        ],
      ),
    );
  }
}
