import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shop_app/components/product_card.dart';
import 'package:shop_app/components/section_title.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/details.dart';

class PopularProduct extends StatelessWidget {
  PopularProduct({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Popular Product"),
        SizedBox(height: Config.screenWidth! * 0.05),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              ...List.generate(
                demoProducts.length,
                    (index) => ProductCard(
                  product: demoProducts[index],
                  onPressShowDetail: () => Get.toNamed(
                    Details.routeName,
                    arguments:
                    ProductDetailsArguments(product: demoProducts[index]),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
