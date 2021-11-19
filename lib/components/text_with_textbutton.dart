import 'package:flutter/material.dart';
import 'package:shop_app/constants/config.dart';

class TextWithTextButton extends StatelessWidget {
  const TextWithTextButton({
    Key? key,
    @required this.text,
    @required this.textButtonText,
    @required this.onPress,
  }) : super(key: key);
  final String? text, textButtonText;
  final onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(vertical: Config.screenHeight! * 0.005),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(text!),
          TextButton(
            onPressed: onPress,
            child: Text(textButtonText!),
            style: ButtonStyle(
              overlayColor: MaterialStateColor.resolveWith(
                      (states) => Colors.transparent),
            ),
          ),
        ],
      ),
    );
  }
}
