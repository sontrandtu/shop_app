import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class SocialMediaButton extends StatelessWidget {
  const SocialMediaButton({
    Key? key,
    @required this.pathIcon,
    @required this.onPress,
  }) : super(key: key);

  final String? pathIcon;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.grey.withOpacity(0.2),
        shape: BoxShape.circle,
      ),
      child: IconButton(
        onPressed: onPress,
        splashRadius: 25,
        icon: SvgPicture.asset(pathIcon!),
      ),
    );
  }
}