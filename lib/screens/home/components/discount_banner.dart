import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';

class DiscountBanner extends StatelessWidget {
  const DiscountBanner({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
          horizontal: Config.screenWidth! * 0.05),
      //height: Config.screenHeight! * 0.12,
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(20),
      ),
      padding: EdgeInsets.symmetric(
          horizontal: Config.screenWidth! * 0.05,
          vertical: Config.screenHeight! * 0.02),
      child: Text.rich(
        TextSpan(
          text: "A Fall surprise\n",
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(
              text: "Cashback 20%",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}