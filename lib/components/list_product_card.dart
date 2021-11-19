import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/models/product.dart';

class ListProductCard extends StatelessWidget {
  const ListProductCard({
    Key? key,
    @required this.product,
    @required this.onPress,
  }) : super(key: key);

  final Product? product;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 5),
        child: Container(
          decoration: BoxDecoration(
              color: kSecondaryColor.withOpacity(0.3),
              borderRadius: BorderRadius.circular(20)),
          child: Row(
            children: [
              SizedBox(
                width: Config.screenWidth! * 0.25,
                child: AspectRatio(
                  aspectRatio: 0.88,
                  child: Container(
                    padding: EdgeInsets.all(10),
                    child: Image.network(product!.images[0]),
                  ),
                ),
              ),
              SizedBox(width: Config.screenWidth! * 0.05),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    product!.title,
                    style: TextStyle(
                      fontSize: 16,
                      color: Colors.black,
                    ),
                    maxLines: 2,
                  ),
                  const SizedBox(height: 10),
                  Text.rich(
                    TextSpan(
                      text: "Price: ",
                      style: TextStyle(color: Colors.black),
                      children: [
                        TextSpan(
                          text: "\$${product!.price.toString()}",
                          style: TextStyle(
                            fontWeight: FontWeight.w600,
                            color: Colors.red,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}