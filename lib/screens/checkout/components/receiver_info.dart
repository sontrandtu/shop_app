import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';

import 'info_field.dart';

class ReceiverInfo extends StatelessWidget {
  const ReceiverInfo({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
              "Receiver's information:",
              style: TextStyle(
                fontWeight: FontWeight.w600,
                fontSize: 20,
              ),
            ),
            TextButton(
              onPressed: () {},
              child: Text(
                "Change",
                style: TextStyle(
                    fontSize: 20, decoration: TextDecoration.underline),
              ),
            ),
          ],
        ),
        InfoField(
          headerText: "Address:",
          subText: "17 Hoa Nam 2, quan Hai Chau, TP Da Nang",
        ),
        const SizedBox(height: 10),
        InfoField(
          headerText: "Phone number:",
          subText: "0367759794",
        ),
        const SizedBox(height: 10),
        InfoField(
          headerText: "Recipient's name:",
          subText: "Trần Văn Sơn",
        ),
      ],
    );
  }
}