import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/util/dimensions.dart';

import '../../widget/app_column.dart';
import '../../widget/appbar_icon.dart';

class PopularFoodDetails extends StatelessWidget {
  const PopularFoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Positioned(
            left: 0,
            right: 0,
            child: Container(
              width: double.maxFinite,
              height: Dimensions.popularFoodImageSize,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/food1.jpg'),
                ),
              ),
            ),
          ),
          Positioned(
            top: Dimensions.height45,
            left: Dimensions.width20,
            right: Dimensions.width20,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppbarIcon(
                  icon: Icons.arrow_back,
                ),
                AppbarIcon(
                  icon: Icons.shopping_cart_outlined,
                )
              ],
            ),
          ),
          Positioned(
            left: 0,
            right: 0,
            bottom: 0,
            top: Dimensions.popularFoodImageSize - 20,
            child: Container(
              padding: EdgeInsets.only(
                left: Dimensions.width20,
                right: Dimensions.width20,
                top: Dimensions.height20,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(Dimensions.radius20),
                  topLeft: Radius.circular(Dimensions.radius20),
                ),
                color: Colors.white,
              ),
              child: const AppColumn(),
            ),
          )
        ],
      ),
    );
  }
}
