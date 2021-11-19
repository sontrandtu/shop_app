import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:shop_app/controllers/product_controller.dart';
import 'package:shop_app/screens/root.dart';
import 'constants/controllerBindings.dart';
import 'constants/routes.dart';
import 'constants/theme.dart';

Future<void> main() async {
  //firebase init
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp();
  //Get.put(ProductController());
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: ControllerBindings(),
      debugShowCheckedModeBanner: false,
      theme: CustomTheme.lightTheme,
      routes: routes,
      home: Root(),
    );
  }
}
