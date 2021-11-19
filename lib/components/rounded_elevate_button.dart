import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';

class RoundedElevateButton extends StatelessWidget {
  const RoundedElevateButton({
    Key? key,
    this.title,
    this.onPress,
    this.padding,
  }) : super(key: key);
  final String? title;
  final onPress, padding;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPress,
      child: Text(title!),
      style: ElevatedButton.styleFrom(
        padding: padding,
        primary: kPrimaryColor,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
      ),
    );
  }
}