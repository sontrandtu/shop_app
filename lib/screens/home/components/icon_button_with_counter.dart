import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants/config.dart';

class IconButtonWithCounter extends StatelessWidget {
  const IconButtonWithCounter({
    Key? key,
    @required this.svgSrc,
    this.numOfItems = 0,
    @required this.onPress,
  }) : super(key: key);

  final String? svgSrc;
  final int? numOfItems;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: Config.screenWidth! * 0.12,
          height: Config.screenWidth! * 0.12,
          decoration: BoxDecoration(
            color: kSecondaryColor.withOpacity(0.2),
            shape: BoxShape.circle,
          ),
          child: IconButton(
            onPressed: onPress,
            icon: SvgPicture.asset(svgSrc!),
            splashRadius: 25,
          ),
        ),
        if (numOfItems != 0)
          Positioned(
            top: -3,
            right: 0,
            child: Container(
              height: Config.screenWidth! * 0.04,
              width: Config.screenWidth! * 0.04,
              decoration: BoxDecoration(
                color: Colors.red,
                shape: BoxShape.circle,
                border: Border.all(width: 1.5, color: Colors.white),
              ),
              child: Center(
                child: Text(
                  "$numOfItems",
                  style: TextStyle(
                    fontSize: Config.screenWidth! * 0.02,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ),
            ),
          ),
      ],
    );
  }
}