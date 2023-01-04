import 'package:flutter/material.dart';
import 'package:shop_app/util/app_color.dart';
import 'package:shop_app/util/dimensions.dart';
import 'package:shop_app/widget/big_text.dart';
import 'package:shop_app/widget/small_text.dart';

import 'food_screen_body.dart';

class MainFoodScreen extends StatefulWidget {
  const MainFoodScreen({Key? key}) : super(key: key);

  @override
  State<MainFoodScreen> createState() => _MainFoodScreenState();
}

class _MainFoodScreenState extends State<MainFoodScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            child: Container(
              margin: EdgeInsets.only(
                top: Dimensions.height55,
                bottom: Dimensions.height15,
              ),
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    children: [
                      BigText(
                        text: 'India',
                        color: AppColors.mainColor,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: Dimensions.width20),
                        child: Row(
                          children: [
                            SmallText(
                              text: "Nagpur",
                              color: Colors.black54,
                            ),
                            const Icon(
                              Icons.arrow_drop_down_rounded,
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                  Center(
                    child: Container(
                      width: Dimensions.width45,
                      height: Dimensions.height45,
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius:
                            BorderRadius.circular(Dimensions.radius15),
                      ),
                      child: Icon(
                        Icons.search,
                        color: Colors.white,
                        size: Dimensions.iconSize24,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
          const Expanded(
            child: SingleChildScrollView(
              child: FoodScreenBody(),
            ),
          ),
        ],
      ),
    );
  }
}