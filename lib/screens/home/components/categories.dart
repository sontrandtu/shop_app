
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:shop_app/constants/config.dart';

class Categories extends StatelessWidget {
  const Categories({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Map<String, dynamic>> categories = [
      {"icon": "assets/icons/Flash Icon.svg", "text": "Flash Deal"},
      {"icon": "assets/icons/Bill Icon.svg", "text": "Bill"},
      {"icon": "assets/icons/Game Icon.svg", "text": "Game"},
      {"icon": "assets/icons/Gift Icon.svg", "text": "Daily Gift"},
      {"icon": "assets/icons/Discover.svg", "text": "More"},
    ];
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: Config.screenWidth! * 0.05),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...List.generate(
            categories.length,
                (index) => CategoriesCard(
              pathIcon: categories[index]["icon"],
              text: categories[index]["text"],
              onPress: () {},
            ),
          ),
        ],
      ),
    );
  }
}

class CategoriesCard extends StatelessWidget {
  const CategoriesCard({
    Key? key,
    @required this.pathIcon,
    @required this.text,
    @required this.onPress,
  }) : super(key: key);

  final String? pathIcon, text;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: Config.screenWidth! * 0.15,
      child: Column(
        children: [
          AspectRatio(
            aspectRatio: 1,
            child: Container(
              decoration: BoxDecoration(
                color: Color(0xFFFFECDF),
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                onPressed: onPress,
                icon: SvgPicture.asset(pathIcon!),
                splashRadius: 20,
              ),
            ),
          ),
          const SizedBox(height: 5),
          Text(
            text!,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
