import 'package:get/get_instance/get_instance.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/components/rounded_elevate_button.dart';
import 'package:shop_app/components/text_with_textbutton.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/controllers/authController.dart';
import 'package:shop_app/screens/reset_password/reset_password.dart';
import 'package:shop_app/screens/sign_up/sign_up.dart';

class SignInButton extends StatelessWidget {
  const SignInButton({
    Key? key,
    @required this.formKey,
    @required this.emailController,
    @required this.passwordController,
  }) : super(key: key);

  final GlobalKey<FormState>? formKey;
  final TextEditingController? emailController;
  final TextEditingController? passwordController;

  @override
  Widget build(BuildContext context) {
    final _authController = Get.find<AuthController>();
    return Column(
      children: [
        Align(
          alignment: Alignment.centerRight,
          child: Padding(
            padding: EdgeInsets.symmetric(
                vertical: Config.screenHeight! * 0.008
            ),
            child: TextButton(
              onPressed: () => Get.to(()=> ResetPassword()),
              child: Text("Forgot Password?"),
              style: ButtonStyle(
                overlayColor: MaterialStateColor.resolveWith(
                        (states) => Colors.transparent),
              ),
            ),
          ),
        ),
        RoundedElevateButton(
          title: "Sign in",
          onPress: () {
            if (formKey!.currentState!.validate()) {
              String email = emailController!.text.trim();
              String password = passwordController!.text;
              _authController.signIn(email, password);
            }
          },
          padding: EdgeInsets.symmetric(
            horizontal: Config.screenWidth! * 0.4,
            vertical: Config.screenHeight! * 0.02,
          ),
        ),
        SizedBox(height: Config.screenHeight! * 0.008),
        TextWithTextButton(
          text: "Don\'t have an account?",
          onPress: () => Get.to(() => SignUp()),
          textButtonText: "Sign Up",
        ),
      ],
    );
  }
}
