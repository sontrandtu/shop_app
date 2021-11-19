import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/models/product.dart';

class ProductDescription extends StatelessWidget {
  const ProductDescription({
    Key? key,
    required this.product,
    required this.onPress,
  }) : super(key: key);

  final Product product;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.05),
          child: Text(
            product.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.symmetric(
            horizontal: Config.screenWidth! * 0.05,
          ),
          child: Text(
            product.description ,
            maxLines: 3,
          ),
        ),
        GestureDetector(
          onTap: onPress,
          child: Padding(
            padding: EdgeInsets.symmetric(
                horizontal: Config.screenWidth! * 0.05, vertical: 15),
            child: Text(
              "See More Detail >>",
              style:
              TextStyle(fontWeight: FontWeight.w600, color: kPrimaryColor),
            ),
          ),
        ),
      ],
    );
  }
}