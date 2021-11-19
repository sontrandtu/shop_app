import 'package:get/get.dart';
import 'package:get/instance_manager.dart';
import 'package:shop_app/controllers/authController.dart';

class ControllerBindings extends Bindings{
  @override
  void dependencies() {
    Get.put<AuthController>(AuthController());
  }
}