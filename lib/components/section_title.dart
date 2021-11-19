import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';

class SectionTitle extends StatelessWidget {
  const SectionTitle({
    Key? key, @required this.title,
  }) : super(key: key);

  final String? title;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Config.screenWidth!* 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Text(
            title!,
            style: TextStyle(
                fontSize: Config.screenWidth! * 0.05, color: Colors.black),
          ),
        ],
      ),
    );
  }
}