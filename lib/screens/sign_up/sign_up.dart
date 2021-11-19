import 'package:flutter/material.dart';
import 'package:shop_app/components/hero_title.dart';
import 'package:shop_app/components/rounded_text_formfield.dart';
import 'package:shop_app/constants/config.dart';

import 'components/sign_up_buttons.dart';

class SignUp extends StatefulWidget {
  static String routeName = "/sign_up";
  const SignUp({Key? key}) : super(key: key);

  @override
  _SignUpState createState() => _SignUpState();
}

class _SignUpState extends State<SignUp> {
  final _formKey = GlobalKey<FormState>();
  TextEditingController _nameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: Config.screenHeight! * 0.04),
          child: Form(
            key: _formKey,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(height: Config.screenHeight! * 0.04),
                  HeroTitle(title: "Sign Up", subTitle: "Create an account..."),
                  SizedBox(height: Config.screenHeight! * 0.1),
                  buildTextFormFields(),
                  SizedBox(height: Config.screenHeight! * 0.04),
                  SignUpButtons(
                    formKey: _formKey,
                    nameController: _nameController,
                    emailController: _emailController,
                    passwordController: _passwordController,
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  Column buildTextFormFields() {
    return Column(
      children: [
        RoundedTextFormField(
          controller: _nameController,
          hintText: "Name",
          validator: (value) {
            if (value.toString().length <= 2) {
              return "Enter a valid name";
            }
            return null;
          },
        ),
        SizedBox(height: Config.screenHeight! * 0.02),
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
        SizedBox(height: Config.screenHeight! * 0.02),
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
        SizedBox(height: Config.screenHeight! * 0.02),
        RoundedTextFormField(
          obsecureText: true,
          hintText: "Confirm Password",
          validator: (value) {
            if (value.trim() != _passwordController.text.trim()) {
              return "Password does not match!";
            }
            return null;
          },
        ),
      ],
    );
  }
}
