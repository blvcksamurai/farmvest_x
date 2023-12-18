import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfileItem extends StatelessWidget {
  final String text;
  final String image;
  const ProfileItem({
    super.key,
    required this.text,
    required this.image,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(height: 20, child: SvgPicture.asset(image)),
              SizedBox(width: 15),
              Text(
                text,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0xFF363131),
                  fontSize: 16,
                  fontWeight: FontWeight.w400,
                  height: 0.06,
                  letterSpacing: 0.50,
                ),
              )
            ],
          ),
          IconButton(onPressed: () {}, icon: Icon(Icons.chevron_right))
        ],
      ),
    );
  }
}
