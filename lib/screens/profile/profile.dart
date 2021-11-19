import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/components/custom_bottom_nav_bar.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/constants/enum.dart';
import 'package:shop_app/controllers/authController.dart';
import 'package:shop_app/screens/home/home.dart';
import 'components/profile_menu.dart';
import 'components/profile_picture.dart';

class ProfileScreen extends StatelessWidget {
  static String routeName = "/profile";

  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final _authController = Get.find<AuthController>();
    return Scaffold(
      appBar: AppBar(
        title: Text("Profile"),
        centerTitle: true,
      ),
      body: Column(
        children: [
          SizedBox(height: Config.screenWidth! * 0.05),
          ProfilePicture(),
          SizedBox(height: Config.screenWidth! * 0.05),
          ProfileMenu(
            icon: "assets/icons/User Icon.svg",
            text: "My Account",
            onPress: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Bell.svg",
            text: "Notification",
            onPress: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Settings.svg",
            text: "Settings",
            onPress: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Question mark.svg",
            text: "Help Center",
            onPress: () {},
          ),
          ProfileMenu(
            icon: "assets/icons/Log out.svg",
            text: "Log Out",
            onPress: () {
              _authController.signOut();
            },
          ),
        ],
      ),
      bottomNavigationBar: CustomBottomNavBar(selectedMenu: MenuState.profile),
    );
  }
}


