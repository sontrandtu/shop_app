import 'package:flutter/material.dart';

class InfoField extends StatelessWidget {
  const InfoField({
    Key? key,
    required this.headerText,
    required this.subText,
  }) : super(key: key);

  final String? headerText;
  final String? subText;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          headerText!,
          style: TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 15,
          ),
        ),
        const SizedBox(height: 5),
        Padding(
          padding: EdgeInsets.only(right: 20),
          child: Text(
            subText!,
            style: TextStyle(fontStyle: FontStyle.italic),
            maxLines: 3,
          ),
        ),
      ],
    );
  }
}