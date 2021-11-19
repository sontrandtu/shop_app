import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/models/product.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    Key? key,
    this.width = 0.4,
    this.aspectRatio = 1.02,
    @required this.product,
    @required this.onPressShowDetail,
  }) : super(key: key);

  final double width, aspectRatio;
  final Product? product;
  final onPressShowDetail;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Config.screenWidth! * 0.05),
      child: GestureDetector(
        onTap: onPressShowDetail,
        child: SizedBox(
          width: Config.screenWidth! * width,
          child: Column(
            children: [
              AspectRatio(
                aspectRatio: aspectRatio,
                child: Container(
                  padding: EdgeInsets.all(Config.screenWidth! * 0.06),
                  decoration: BoxDecoration(
                    color: kSecondaryColor.withOpacity(0.2),
                    borderRadius: BorderRadius.circular(15),
                  ),
                  child: Image.asset(product!.images[0]),
                ),
              ),
              const SizedBox(height: 5),
              Text(
                product!.title,
                style: TextStyle(color: Colors.black),
                maxLines: 2,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    "\$${product!.price}",
                    style: TextStyle(
                      fontSize: Config.screenWidth! * 0.05,
                      fontWeight: FontWeight.bold,
                      color: Colors.red,
                    ),
                  ),
                  // IconButton(
                  //   onPressed: onPressAdd,
                  //   icon: Icon(Icons.add_shopping_cart),
                  //   splashRadius: 20,
                  // )
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}