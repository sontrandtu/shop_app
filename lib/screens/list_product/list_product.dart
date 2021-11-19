import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/components/custom_bottom_nav_bar.dart';
import 'package:shop_app/components/list_product_card.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/constants/enum.dart';
import 'package:shop_app/controllers/product_controller.dart';
import 'package:shop_app/screens/details/details.dart';

class ListProductScreen extends StatelessWidget {
  final productController = Get.put(ProductController());
   ListProductScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() =>
      Scaffold(
        appBar: AppBar(
          title: Text("List Products"),
          centerTitle: true,
        ),
        bottomNavigationBar:
            CustomBottomNavBar(selectedMenu: MenuState.favourite),
        body: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Config.screenWidth! * 0.05,
            vertical: Config.screenWidth! * 0.05,
          ),
          child: ListView.builder(
            itemCount: productController.getAll().length,
            itemBuilder: (context, index) => ListProductCard(
              product: productController.getAll()[index],
              onPress: () => Get.toNamed(
                Details.routeName,
                arguments: ProductDetailsArguments(product: productController.products[index]),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
