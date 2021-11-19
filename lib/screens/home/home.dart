import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/components/custom_bottom_nav_bar.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/constants/enum.dart';
import 'package:shop_app/screens/profile/profile.dart';
import 'components/categories.dart';
import 'components/discount_banner.dart';
import 'components/home_header.dart';
import 'components/popular_product.dart';
import 'components/product_categories.dart';

class Home extends StatelessWidget {
  static String routeName = "/home";

  const Home({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    //ModalRoute.of(context)!.settings.arguments.toString() // Lấy data từ screen trước
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(height: Config.screenWidth! * 0.05),
              HomeHeader(),
              SizedBox(height: Config.screenWidth! * 0.1),
              DiscountBanner(),
              SizedBox(height: Config.screenWidth! * 0.1),
              Categories(),
              SizedBox(height: Config.screenWidth! * 0.1),
              ProductCategories(),
              SizedBox(height: Config.screenWidth! * 0.1),
              PopularProduct(),
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.home),
    );
  }
}
