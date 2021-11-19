import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/screens/cart/cart.dart';
import 'package:shop_app/screens/home/components/search_field.dart';
import 'package:shop_app/screens/profile/profile.dart';

import 'icon_button_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(
        horizontal: Config.screenWidth! * 0.05,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SearchField(
            widthOfField: Config.screenWidth! * 0.6,
            hintText: "Search Product",
          ),
          IconButtonWithCounter(
            onPress: () => Get.to(() => CartScreen()),
            svgSrc: "assets/icons/Cart Icon.svg",
            numOfItems: 0,
          ),
          IconButtonWithCounter(
            onPress: () {
              Get.to(() => ProfileScreen());
            },
            svgSrc: "assets/icons/Bell.svg",
            numOfItems: 3,
          ),
        ],
      ),
    );
  }
}
