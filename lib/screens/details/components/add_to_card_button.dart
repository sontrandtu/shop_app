import 'package:flutter/material.dart';
import 'package:shop_app/components/rounded_elevate_button.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/screens/details/components/top_rounded_container.dart';

class AddToCardButton extends StatelessWidget {
  const AddToCardButton({
    Key? key, required this.onPress,
  }) : super(key: key);

  final onPress;

  @override
  Widget build(BuildContext context) {
    return TopRoundedContainer(
      color: Colors.white,
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: Config.screenWidth! * 0.2,
          vertical: Config.screenWidth! * 0.14,
        ),
        child: RoundedElevateButton(
          onPress: onPress,
          title: "Add to Cart",
          padding: EdgeInsets.symmetric(
            horizontal: Config.screenWidth! * 0.1,
            vertical: Config.screenWidth! * 0.05,
          ),
        ),
      ),
    );
  }
}