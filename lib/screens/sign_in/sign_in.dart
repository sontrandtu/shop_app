
import 'package:flutter/material.dart';
import 'package:shop_app/components/hero_title.dart';
import 'package:shop_app/constants/config.dart';

import 'components/sign_in_form.dart';

class SignIn extends StatelessWidget {
  static String routeName = "/sign_in";
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(height: Config.screenHeight! * 0.1),
          //show header title
          HeroTitle(
            title: "Welcome!",
            subTitle: "Enter email and password to login ...",
          ),
          SizedBox(height: Config.screenHeight! * 0.15),
          //show fields
          SignInForm(),
        ],
      ),
    );
  }
}
