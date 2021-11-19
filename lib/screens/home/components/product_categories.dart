import 'package:flutter/material.dart';
import 'package:shop_app/components/section_title.dart';
import 'package:shop_app/constants/config.dart';

class ProductCategories extends StatelessWidget {
  const ProductCategories({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SectionTitle(title: "Product categories"),
        SizedBox(height: Config.screenWidth! * 0.05),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              TypeProductCard(
                onPress: () {
                  print("Click");
                },
                pathBanner: "assets/images/banner_nam.png",
                typeProduct: "Men",
              ),
              TypeProductCard(
                onPress: () {
                  print("Click");
                },
                pathBanner: "assets/images/banner_nu.jpg",
                typeProduct: "Woman",
              ),
              TypeProductCard(
                onPress: () {
                  print("Click");
                },
                pathBanner: "assets/images/banner_kid.png",
                typeProduct: "Kids",
              ),
              TypeProductCard(
                onPress: () {
                  print("Click");
                },
                pathBanner: "assets/images/Image Banner 3.png",
                typeProduct: "Accessories",
              ),
              SizedBox(
                width: Config.screenWidth! * 0.05,
              )
            ],
          ),
        ),
      ],
    );
  }
}

class TypeProductCard extends StatelessWidget {
  const TypeProductCard({
    Key? key,
    @required this.typeProduct,
    @required this.pathBanner,
    @required this.onPress,
  }) : super(key: key);

  final String? typeProduct, pathBanner;
  final onPress;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: Config.screenWidth! * 0.05),
      child: SizedBox(
        height: Config.screenHeight! * 0.1,
        width: Config.screenHeight! * 0.24,
        child: InkWell(
          onTap: onPress,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  pathBanner!,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.4),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: Config.screenWidth! * 0.05,
                    vertical: Config.screenWidth! * 0.01,
                  ),
                  child: Text(
                    typeProduct!,
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: Config.screenWidth! * 0.05,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}