import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/components/rounded_text_formfield.dart';
import 'package:shop_app/components/social_media_button.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/controllers/authController.dart';
import 'package:shop_app/screens/sign_in/components/sign_in_buttons.dart';

class SignInForm extends StatefulWidget {
  const SignInForm({
    Key? key,
  }) : super(key: key);

  @override
  _SignInFormState createState() => _SignInFormState();
}

class _SignInFormState extends State<SignInForm> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    //final _authController = Get.find<AuthController>();
    return Column(
      children: [
        Form(
          key: _formKey,
          child: Column(
            children: [
              buildTextFormField(),
              SignInButton(
                formKey: _formKey,
                emailController: _emailController,
                passwordController: _passwordController,
              ),
            ],
          ),
        ),
        Column(
          children: [
            Text("Or sign in with: "),
            SizedBox(height: Config.screenHeight! * 0.03),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SocialMediaButton(
                  onPress: () {},
                  pathIcon: "assets/icons/google-icon.svg",
                ),
                SizedBox(width: 20),
                SocialMediaButton(
                  onPress: () {},
                  pathIcon: "assets/icons/facebook-2.svg",
                ),
              ],
            ),
          ],
        ),
      ],
    );
  }

  Column buildTextFormField() {
    return Column(
      children: [
        RoundedTextFormField(
          controller: _emailController,
          hintText: "Email",
          validator: (value) {
            bool _isEmailValid = RegExp(
                r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
                .hasMatch(value!);
            if (!_isEmailValid) {
              return "Invalid Email";
            }
            return null;
          },
        ),
        SizedBox(height: Config.screenHeight! * 0.01),
        RoundedTextFormField(
          controller: _passwordController,
          obsecureText: true,
          hintText: "Password",
          validator: (value) {
            if (value.toString().length < 6) {
              return "Password should be longer or equal to 6 character";
            }
            return null;
          },
        ),
      ],
    );
  }
}


