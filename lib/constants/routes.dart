
import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/cart/cart.dart';
import 'package:shop_app/screens/checkout/check_out.dart';
import 'package:shop_app/screens/details/details.dart';
import 'package:shop_app/screens/home/home.dart';
import 'package:shop_app/screens/login_successful/login_successful.dart';
import 'package:shop_app/screens/profile/profile.dart';
import 'package:shop_app/screens/reset_password/reset_password.dart';
import 'package:shop_app/screens/sign_in/sign_in.dart';
import 'package:shop_app/screens/sign_up/sign_up.dart';

final Map<String, WidgetBuilder> routes = {
  Home.routeName: (context) => Home(),
  SignIn.routeName: (context) => SignIn(),
  SignUp.routeName: (context) => SignUp(),
  ResetPassword.routeName: (context) => ResetPassword(),
  LoginSuccessful.routeName: (context) => LoginSuccessful(),
  Details.routeName: (context) => Details(),
  CartScreen.routeName: (context) => CartScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
  CheckOutScreen.routeName: (context) => CheckOutScreen(),
};