
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/controllers/authController.dart';
import 'package:shop_app/screens/sign_in/sign_in.dart';

import 'login_successful/login_successful.dart';

class Root extends StatelessWidget {
  const Root({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Config().init(context);
    return Scaffold(
      body: GetBuilder<AuthController>(
        builder: (_) {
          return SafeArea(
            child: Padding(
              padding:
              EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.04),
              child: _.userProfile != null ? LoginSuccessful() : SignIn(),
            ),
          );
        },
      ),
    );
  }
}
