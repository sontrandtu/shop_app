import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/screens/details/components/add_to_card_button.dart';
import 'package:shop_app/models/product.dart';

import 'components/header_detail.dart';
import 'components/product_description.dart';
import 'components/product_image.dart';
import 'components/size_dots.dart';
import 'components/top_rounded_container.dart';

class Details extends StatelessWidget {
  static String routeName = "/detail";

  const Details({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final ProductDetailsArguments arguments =
        ModalRoute.of(context)!.settings.arguments as ProductDetailsArguments;
    final Product product = arguments.product;
    return Scaffold(
      backgroundColor: Colors.white.withOpacity(0.95),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              HeaderDetail(onPress: () => Get.back()),
              ProductImages(product: product),
              TopRoundedContainer(
                color: Colors.white,
                child: Column(
                  children: [
                    ProductDescription(
                      product: product,
                      onPress: () {},
                    ),
                    TopRoundedContainer(
                      color: Color(0xFFF6F7F9),
                      child: Column(
                        children: [
                          SizeDots(product: product),
                          //AddToCardButton(),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}



class ProductDetailsArguments {
  late final Product product;

  ProductDetailsArguments({required this.product});
}
