import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../util/app_color.dart';
import '../../widget/big_text.dart';

class RecommenedFoodDetail extends StatelessWidget {
  const RecommenedFoodDetail({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            bottom: PreferredSize(
              preferredSize: const Size.fromHeight(20),
              child: Container(
                color: Colors.white,
                width: double.maxFinite,
                padding: const EdgeInsets.only(
                  top: 5,
                  bottom: 10,
                ),
                child: Center(
                  child: BigText(
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
            child: Text(
                "Lorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown pLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an Lorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleLorem when an unknown printer took a galley of type and scrambled it to make a type specimen book Lorem mwhen an unknown printer took a galley of type and scrambleunknown printer took a galley of type and scramblerinter took a galley of type and scramble"),
          )
        ],
      ),
    );
  }
}
