import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/util/dimensions.dart';
import 'package:shop_app/widget/small_text.dart';

class IconAndTextWidget extends StatelessWidget {
  final String text;
  IconData icon;
  final Color iconColor;

  IconAndTextWidget({
    super.key,
    required this.text,
    required this.icon,
    required this.iconColor,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          icon,
          color: iconColor,
          size: Dimensions.iconSize24,
        ),
        SizedBox(
          width: Dimensions.width5,
        ),
        SmallText(
          text: text,
        ),
      ],
    );
  }
}
