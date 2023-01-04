import 'package:flutter/material.dart';
import 'package:shop_app/widget/small_text.dart';

import '../util/app_color.dart';
import '../util/dimensions.dart';
import 'big_text.dart';
import 'icon_and_text_widget.dart';

class AppColumn extends StatelessWidget {
  String text;
  AppColumn({
    Key? key,
    required this.text,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        BigText(
          text: text,
          size: Dimensions.font26,
        ),
        SizedBox(
          height: Dimensions.height10,
        ),
        Row(
          children: [
            Wrap(
              children: List.generate(
                5,
                (index) => Icon(
                  Icons.star,
                  color: AppColors.mainColor,
                  size: Dimensions.font16,
                ),
              ),
            ),
            SizedBox(
              width: Dimensions.width20,
            ),
            SmallText(text: '4.5'),
            SizedBox(
              width: Dimensions.width10,
            ),
            SmallText(text: '1000'),
            SizedBox(
              width: Dimensions.width5,
            ),
            SmallText(text: 'comments'),
          ],
        ),
        SizedBox(
          height: Dimensions.height20,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            IconAndTextWidget(
              text: "Normal",
              icon: Icons.circle_sharp,
              iconColor: AppColors.iconColor01,
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            IconAndTextWidget(
              text: "1.7km",
              icon: Icons.location_on,
              iconColor: AppColors.mainColor,
            ),
            SizedBox(
              width: Dimensions.width10,
            ),
            IconAndTextWidget(
              text: "32min",
              icon: Icons.access_time_rounded,
              iconColor: AppColors.iconColor02,
            ),
          ],
        ),
      ],
    );
  }
}
