import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/components/hero_title.dart';
import 'package:shop_app/components/rounded_elevate_button.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/controllers/authController.dart';
import 'package:shop_app/screens/home/home.dart';

class LoginSuccessful extends StatelessWidget {
  static String routeName = "/login_successful";

  const LoginSuccessful({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final _authController = Get.find<AuthController>();
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: Config.screenHeight! * 0.1),
          child: SingleChildScrollView(
            child: Column(
              children: [
                //Spacer(),
                HeroTitle(
                  // what if the name was not typed in capital? we can capitalize the first letter
                  title: "Hello ${_authController.displayName.toString()}",
                  subTitle: "Let's Shopping",
                ),
                SizedBox(
                  height: Config.screenHeight! * 0.03,
                ),
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: Image.asset(
                    "assets/images/splash_1.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(height: Config.screenHeight! * 0.03),
                RoundedElevateButton(
                  title: "Continue",
                  onPress: () => Get.off(() => Home()),
                  padding: EdgeInsets.symmetric(
                    horizontal: Config.screenWidth! * 0.30,
                    vertical: Config.screenHeight! * 0.02,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
