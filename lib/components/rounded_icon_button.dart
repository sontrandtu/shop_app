import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';


class RoundedIconBtn extends StatelessWidget {
  const RoundedIconBtn({
    Key? key,
    @required required this.iconData,
    @required required this.onPress,
  }) : super(key: key);

  final IconData iconData;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: Config.screenWidth!*0.1,
      width: Config.screenWidth!*0.1,
      child: TextButton(
        style: TextButton.styleFrom(
          padding: EdgeInsets.zero,
          primary: kSecondaryColor,
          backgroundColor: Colors.white,
          shape:
          RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
        ),
        onPressed: onPress,
        child: Icon(iconData,color: Colors.red,),
      ),
    );
  }
}