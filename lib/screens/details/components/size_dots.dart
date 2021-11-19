import 'package:flutter/material.dart';
import 'package:shop_app/components/rounded_icon_button.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/models/product.dart';
import 'package:shop_app/screens/details/components/add_to_card_button.dart';

class SizeDots extends StatefulWidget {
  const SizeDots({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product product;

  @override
  _SizeDotsState createState() => _SizeDotsState();
}

class _SizeDotsState extends State<SizeDots> {
  int selectedSize = 0;
  int quantity = 1;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.05),
          child: Row(
            children: [
              ...List.generate(
                  widget.product.size.length, (index) => buildSizeDot(index)),
              Spacer(),
              RoundedIconBtn(
                iconData: Icons.remove,
                onPress: () {
                  setState(() {
                    if (quantity > 1) {
                      quantity--;
                    } else {
                      quantity = 1;
                    }
                  });
                },
              ),
              SizedBox(
                width: Config.screenWidth! * 0.1,
                child: Align(
                  alignment: Alignment.center,
                  child: Text("$quantity"),
                ),
              ),
              RoundedIconBtn(
                iconData: Icons.add,
                onPress: () {
                  setState(() {
                    quantity++;
                  });
                },
              ),
            ],
          ),
        ),
        AddToCardButton(
          onPress: () {},
        ),
      ],
    );
  }

  GestureDetector buildSizeDot(int index) {
    return GestureDetector(
      onTap: () {
        setState(() {
          selectedSize = index;
          String size = widget.product.size[index];
          print(size);
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: 10),
        height: Config.screenWidth! * 0.1,
        width: Config.screenWidth! * 0.1,
        decoration: BoxDecoration(
          color: Colors.white,
          shape: BoxShape.circle,
          border: Border.all(
              color:
                  selectedSize == index ? kPrimaryColor : Colors.transparent),
        ),
        child: Align(
          alignment: Alignment.center,
          child: Text(
            widget.product.size[index],
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 17,
            ),
          ),
        ),
      ),
    );
  }
}
