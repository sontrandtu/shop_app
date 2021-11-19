import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';

class TopRoundedContainer extends StatelessWidget {
  const TopRoundedContainer({
    Key? key,
    @required this.color,
    @required this.child,
  }) : super(key: key);
  final Color? color;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: Config.screenWidth! * 0.05),
      padding: EdgeInsets.only(top: Config.screenWidth! * 0.05),
      width: double.infinity,
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      child: child,
    );
  }
}