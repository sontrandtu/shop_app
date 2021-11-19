import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/models/cart.dart';

class CartItemCard extends StatelessWidget {
  const CartItemCard({
    Key? key,
    @required this.cart ,
  }) : super(key: key);

  final Cart? cart;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          width: Config.screenWidth! * 0.25,
          child: AspectRatio(
            aspectRatio: 0.88,
            child: Container(
              padding: EdgeInsets.all(10),
              decoration: BoxDecoration(
                color: Color(0xFFF5F6F9),
                borderRadius: BorderRadius.circular(15),
              ),
              child: Image.asset(cart!.product!.images[0]),
            ),
          ),
        ),
        SizedBox(width: Config.screenWidth! * 0.05),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              cart!.product!.title,
              style: TextStyle(
                fontSize: 16,
                color: Colors.black,
              ),
              maxLines: 2,
            ),
            const SizedBox(height: 10),
            Text.rich(
              TextSpan(
                text: "\$${cart!.product!.price.toString()}",
                style: TextStyle(
                  fontWeight: FontWeight.w600,
                  color: Colors.red,
                ),
                children: [
                  TextSpan(
                    text: " x${cart!.numOfItems}",
                    style: TextStyle(color: Colors.black54),
                  ),
                ],
              ),
            ),
          ],
        ),
      ],
    );
  }
}