import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';
import 'package:shop_app/models/product.dart';

class ProductImages extends StatefulWidget {
  const ProductImages({
    Key? key,
    required this.product,
  }) : super(key: key);

  final Product? product;

  @override
  _ProductImagesState createState() => _ProductImagesState();
}

class _ProductImagesState extends State<ProductImages> {
  int selectedImage = 0;
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          width: Config.screenWidth! * 0.6,
          child: AspectRatio(
            aspectRatio: 1,
            child: Image.network(widget.product!.images[selectedImage]),
          ),
        ),
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ...List.generate(widget.product!.images.length,
                    (index) => buildSmallPreview(index))
          ],
        ),
      ],
    );
  }

  GestureDetector buildSmallPreview(int index) {
    return GestureDetector(
      onTap: (){
        setState(() {
          selectedImage = index;
        });
      },
      child: Container(
        margin: EdgeInsets.only(right: Config.screenWidth!*0.05),
        padding: EdgeInsets.all(Config.screenWidth! * 0.02),
        height: Config.screenWidth! * 0.13,
        width: Config.screenWidth! * 0.13,
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: (selectedImage == index) ?  kPrimaryColor : Colors.transparent)),
        child: Image.network(widget.product!.images[index]),
      ),
    );
  }
}