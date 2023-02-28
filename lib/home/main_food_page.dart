import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/home/FoodPageBody.dart';
import 'package:shop_app/uitls/appColors.dart';
import 'package:shop_app/widgets/big_text.dart';
import 'package:shop_app/widgets/small_text.dart';

class MainFoodPage extends StatelessWidget {
  const MainFoodPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.only(top: 55, bottom: 15),
            padding: const EdgeInsets.only(left: 20, right: 20),
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Center(
                    child: Column(
                      children: [
                        BigText(
                          text: "India",
                          color: AppColors.mainColor,
                          size: 20,
                        ),
                        Row(
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
                      ],
                    ),
                  ),
                  Center(
                    child: Container(
                      height: 40,
                      width: 40,
                      decoration: BoxDecoration(
                        color: AppColors.mainColor,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          const FoodPageBody(),
        ],
      ),
    );
  }
}
