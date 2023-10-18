import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CardDetailsModal extends StatelessWidget {
  const CardDetailsModal({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 414,
      height: 284,
      child: Stack(
        children: [
          Positioned(
            left: 0,
            top: 0,
            child: Container(
              width: 414,
              height: 284,
              decoration: ShapeDecoration(
                color: Colors.white,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
              ),
            ),
          ),
          Positioned(
            left: 105,
            top: 30,
            child: Text(
              'Enter your card details below ',
              style: TextStyle(
                color: Color(0xFF363131),
                fontSize: 14,
                fontFamily: 'Poppins',
                fontWeight: FontWeight.w400,
                height: 0,
              ),
            ),
          ),
          Positioned(
            left: 26,
            top: 102,
            child: Container(
              width: 359,
              height: 44,
              child: Stack(
                children: [
                  Positioned(
                    left: 0,
                    top: 0,
                    child: Container(
                      width: 359,
                      height: 44,
                      decoration: ShapeDecoration(
                        color: Colors.white,
                        shape: RoundedRectangleBorder(
                          side: BorderSide(width: 1, color: Color(0xFF7E7E7E)),
                          borderRadius: BorderRadius.circular(9),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    left: 78,
                    top: 11,
                    child: Text(
                      '1234 5678 1234 5678 000',
                      style: TextStyle(
                        color: Color(0xFF757575),
                        fontSize: 18,
                        fontFamily: 'Poppins',
                        fontWeight: FontWeight.w400,
                        height: 0,
                      ),
                    ),
                  ),
                  Positioned(
                    left: 14,
                    top: 10,
                    child: Container(
                      width: 37,
                      height: 25.90,
                      child: SvgPicture.asset('assets/images/card.svg'),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
