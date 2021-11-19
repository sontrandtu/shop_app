import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';

class HeroTitle extends StatelessWidget {
  const HeroTitle({
    Key? key,
    @required this.title,
    @required this.subTitle,
  }) : super(key: key);

  final String? title, subTitle;
  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.bottomLeft,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.end,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title!,
            style: TextStyle(
                fontSize: Config.screenWidth! * 0.1,
                fontWeight: FontWeight.bold,
                color: kPrimaryColor,
                fontFamily: "Muli"),
          ),
          SizedBox(height: Config.screenHeight! * 0.005),
          Text(
            subTitle!,
            style: TextStyle(
              fontSize: Config.screenWidth! * 0.045,
              fontWeight: FontWeight.bold,
              fontFamily: "Muli",
            ),
          ),
        ],
      ),
    );
  }
}
