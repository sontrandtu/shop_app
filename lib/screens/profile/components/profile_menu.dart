import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants/config.dart';

class ProfileMenu extends StatelessWidget {
  const ProfileMenu({
    Key? key,
    @required this.text,
    @required this.icon,
    @required this.onPress,
  }) : super(key: key);

  final String? text, icon;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
            padding: EdgeInsets.all(20),
            primary: Color(0xFFF5F6F9),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15))),
        onPressed: onPress,
        child: Row(
          children: [
            SvgPicture.asset(
              icon!,
              width: 22,
              color: kPrimaryColor,
            ),
            SizedBox(width: 20),
            Expanded(
              child: Text(
                text!,
                style: Theme.of(context).textTheme.bodyText1,
              ),
            ),
            Icon(
              Icons.arrow_forward_ios,
              color: kPrimaryColor,
            )
          ],
        ),
      ),
    );
  }
}