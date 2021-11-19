import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';

class HeaderDetail extends StatelessWidget {
  const HeaderDetail({
    Key? key,
    @required this.onPress,
  }) : super(key: key);

  final onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: Config.screenHeight! * 0.01),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.05),
          child: Align(
            alignment: Alignment.centerLeft,
            child: IconButton(
              onPressed: onPress,
              icon: Icon(Icons.arrow_back_ios),
            ),
          ),
        ),
      ],
    );
  }
}
