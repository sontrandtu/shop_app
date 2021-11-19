import 'package:flutter/material.dart';
import 'package:shop_app/components/rounded_elevate_button.dart';
import 'package:shop_app/constants/config.dart';

import 'components/payment_method.dart';
import 'components/receiver_info.dart';

class CheckOutScreen extends StatelessWidget {
  static String routeName = "/check_out";

  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      backgroundColor: kBackgroundColor,
      body: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Config.screenWidth! * 0.06,
          vertical: Config.screenWidth! * 0.05,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            ReceiverInfo(),
            const SizedBox(height: 20),
            PaymentMethods(textPayment: "Pay on arrival"),
            Spacer(),
            Column(
              children: [
                CostFiled(
                  cost: 20,
                  costName: "Delivery Fee:",
                ),
                const SizedBox(height: 4),
                CostFiled(
                  cost: 520,
                  costName: "Subtotal:",
                ),
                const SizedBox(height: 4),
                Container(
                  height: 2,
                  width: double.infinity,
                  color: Colors.black,
                ),
                const SizedBox(height: 4),
                CostFiled(costName: "Total", cost: 560),
              ],
            ),
            SizedBox(height: Config.screenWidth!*0.1),
            RoundedElevateButton(
              onPress: () {},
              title: "Pay",
              padding: EdgeInsets.symmetric(
                horizontal: Config.screenWidth! * 0.4,
                vertical: Config.screenWidth! * 0.05,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CostFiled extends StatelessWidget {
  const CostFiled({
    Key? key,
    required this.costName,
    required this.cost,
  }) : super(key: key);

  final String? costName;
  final double? cost;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          costName!,
          style: TextStyle(fontWeight: FontWeight.bold, fontSize: 17),
        ),
        Text(
          "\$${cost.toString()}",
          style: TextStyle(
            fontSize: 17,
            fontWeight: FontWeight.w600,
          ),
        ),
      ],
    );
  }
}
