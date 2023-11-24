import 'package:flutter/material.dart';

import '../utils/app_styles.dart';

class LongContainer extends StatelessWidget {
  const LongContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 10),
      child: Container(
        height: 120,
        width: 380,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          color: Styles.containerColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(
              width: 20,
            ),
            Image(
              image: AssetImage('assets/images/gardening_rafiki.png'),
            ),
            Image(
              image: AssetImage('assets/images/pana.png'),
            )
          ],
        ),
      ),
    );
  }
}
