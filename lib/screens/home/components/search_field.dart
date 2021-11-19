import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';

class SearchField extends StatelessWidget {
  const SearchField({
    Key? key,
    @required this.hintText,
    @required this.widthOfField,
  }) : super(key: key);

  final String? hintText;
  final double? widthOfField;

  @override
  Widget build(BuildContext context) {
    //final TextEditingController? _searchController = TextEditingController();
    return Container(
      width: widthOfField,
      //height: 50,
      decoration: BoxDecoration(
        color: kSecondaryColor.withOpacity(0.2),
        borderRadius: BorderRadius.circular(15),
      ),
      child: TextField(
        //controller: _searchController,
        onChanged: (value) {
          print(value);
        },
        decoration: InputDecoration(
          enabledBorder: InputBorder.none,
          focusedBorder: InputBorder.none,
          hintText: hintText,
          prefixIcon: Icon(Icons.search),
          contentPadding: EdgeInsets.symmetric(
            horizontal: Config.screenWidth! * 0.02,
            vertical: Config.screenWidth! * 0.03,
          ),
        ),
      ),
    );
  }
}