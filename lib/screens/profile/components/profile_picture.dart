import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ProfilePicture extends StatelessWidget {
  const ProfilePicture({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          CircleAvatar(
            backgroundImage:
            AssetImage("assets/images/Profile Image.png"),
          ),
          Positioned(
            right: 0,
            bottom: 0,
            child: SizedBox(
              height: 46,
              width: 46,
              child: Container(
                decoration: BoxDecoration(
                  color: Color(0xFFF5F6F9),
                  shape: BoxShape.circle,
                ),
                child: IconButton(
                  onPressed: () {},
                  icon: SvgPicture.asset("assets/icons/Camera Icon.svg"),
                  splashRadius: 1,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}