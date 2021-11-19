import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import 'package:shop_app/components/rounded_elevate_button.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/screens/checkout/check_out.dart';

class CheckOutCard extends StatelessWidget {
  const CheckOutCard({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        vertical: Config.screenWidth! * 0.05,
        horizontal: Config.screenWidth! * 0.1,
      ),
      //height: 180,
      //color: Colors.red,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topRight: Radius.circular(30),
          topLeft: Radius.circular(30),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -15),
            blurRadius: 20,
            color: Color(0xFFDADADA).withOpacity(0.5),
          ),
        ],
      ),
      child: SafeArea(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Row(
              children: [
                Container(
                  padding: EdgeInsets.all(10),
                  height: Config.screenWidth! * 0.1,
                  width: Config.screenWidth! * 0.1,
                  decoration: BoxDecoration(
                    color: Color(0xFFF5F6F9),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: SvgPicture.asset("assets/icons/receipt.svg"),
                ),
                Spacer(),
                Text("Add voucher code >>"),
              ],
            ),
            SizedBox(height: Config.screenWidth! * 0.05),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text.rich(
                  TextSpan(text: "Total:\n", children: [
                    TextSpan(
                      text: "\$337.15",
                      style: TextStyle(fontSize: 16, color: Colors.black),
                    ),
                  ]),
                ),
                RoundedElevateButton(
                  padding: EdgeInsets.symmetric(
                    horizontal: Config.screenWidth!*0.16,
                    vertical: Config.screenWidth!*0.05,
                  ),
                  title: "Check Out",
                  onPress: () => Get.toNamed(CheckOutScreen.routeName),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}