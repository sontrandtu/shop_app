import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';

class PaymentMethods extends StatefulWidget {
  const PaymentMethods({
    Key? key,
    required this.textPayment,
  }) : super(key: key);

  final String? textPayment;

  @override
  _PaymentMethodsState createState() => _PaymentMethodsState();
}

class _PaymentMethodsState extends State<PaymentMethods> {
  bool isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Payment methods:",
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 20,
          ),
        ),
        SizedBox(height: 10),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.03),
          child: Container(
            height: Config.screenWidth! * 0.17,
            width: Config.screenWidth!,
            decoration: BoxDecoration(
                color: Color(0xFFFFFFFF),
                borderRadius: BorderRadius.circular(20)),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      if (isSelected == false) {
                        isSelected = true;
                      } else {
                        isSelected = false;
                      }
                    });
                  },
                  child: Padding(
                    padding: EdgeInsets.symmetric(horizontal: 15),
                    child: Container(
                      height: 25,
                      width: 25,
                      decoration: BoxDecoration(
                        //color: Colors.black,
                        borderRadius: BorderRadius.circular(15),
                        border: Border.all(color: Colors.black),
                      ),
                      child: Padding(
                        padding: const EdgeInsets.all(2),
                        child: Container(
                          height: 20,
                          width: 20,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: (isSelected)
                                ? kPrimaryColor
                                : Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
                SizedBox(width: 15),
                Text(
                  widget.textPayment!,
                  style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
        )
      ],
    );
  }
}
