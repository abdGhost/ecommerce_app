import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:shop_app/util/dimensions.dart';
import 'package:shop_app/widget/appbar_icon.dart';
import 'package:shop_app/widget/expandable_text_widget.dart';

import '../../util/app_color.dart';
import '../../widget/big_text.dart';

class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    print('Here');
    return Scaffold(
      backgroundColor: Colors.white,
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            toolbarHeight: 70,
            title: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                AppbarIcon(
                  icon: Icons.clear,
                ),
                AppbarIcon(
                  icon: Icons.shopping_cart_outlined,
                )
              ],
            ),
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                width: double.maxFinite,
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                ),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(Dimensions.radius20),
                    topLeft: Radius.circular(Dimensions.radius20),
                  ),
                ),
                child: Center(
                  child: BigText(
                    size: Dimensions.font26,
                    text: "Indian Food",
                  ),
                ),
              ),
            ),
            pinned: true,
            backgroundColor: AppColors.yellowColor,
            expandedHeight: 300,
            flexibleSpace: FlexibleSpaceBar(
              background: Image.asset(
                "assets/images/food1.jpg",
                width: double.maxFinite,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Column(
              children: [
                Container(
                  margin: EdgeInsets.only(
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                    top: Dimensions.height10 / 2,
                  ),
                  child: const ExpandedTextWidget(
                    text:
                        "Lorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown pLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an Lorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleunknown printer took a galley of type and scramblerinter took a galley of type and scramble",
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
      bottomNavigationBar: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            padding: EdgeInsets.only(
              left: Dimensions.width20 * 2.5,
              right: Dimensions.width20 * 2.5,
              top: Dimensions.height10,
              bottom: Dimensions.height10,
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppbarIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.remove,
                ),
                BigText(
                  text: "\$12.88 " + " X " + " 0 ",
                  color: AppColors.mainBlackColor,
                  size: Dimensions.font26,
                ),
                AppbarIcon(
                  iconSize: Dimensions.iconSize24,
                  iconColor: Colors.white,
                  backgroundColor: AppColors.mainColor,
                  icon: Icons.add,
                ),
              ],
            ),
          ),
          Container(
            height: Dimensions.bottomNavBarHeight,
            padding: EdgeInsets.only(
              top: Dimensions.height30,
              bottom: Dimensions.height30,
              left: Dimensions.width20,
              right: Dimensions.width20,
            ),
            decoration: BoxDecoration(
              color: AppColors.buttonBackgroundColor,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(Dimensions.radius20 * 2),
                topRight: Radius.circular(Dimensions.radius20 * 2),
              ),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                      Dimensions.radius20,
                    ),
                  ),
                  child: Icon(
                    Icons.favorite,
                    color: AppColors.mainColor,
                  ),
                ),
                Container(
                  padding: EdgeInsets.only(
                    top: Dimensions.height20,
                    bottom: Dimensions.height20,
                    left: Dimensions.width20,
                    right: Dimensions.width20,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(
                      Dimensions.radius20,
                    ),
                    color: AppColors.mainColor,
                  ),
                  child: BigText(
                    text: "\$10 | add to cart ",
                    color: Colors.white,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
