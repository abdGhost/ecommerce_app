import 'package:flutter/material.dart';
import 'package:shop_app/app_color.dart';
import 'package:shop_app/widget/big_text.dart';
import 'package:shop_app/widget/icon_and_text_widget.dart';
import 'package:shop_app/widget/small_text.dart';

class FoodScreenBody extends StatefulWidget {
  const FoodScreenBody({Key? key}) : super(key: key);

  @override
  State<FoodScreenBody> createState() => _FoodScreenBodyState();
}

class _FoodScreenBodyState extends State<FoodScreenBody> {
  PageController pageController = PageController(viewportFraction: .85);
  var _currentPageValue = 0.0;
  double _scaleFactor = 0.8;

  @override
  void initState() {
    super.initState();
    pageController.addListener(() {
      setState(() {
        _currentPageValue = pageController.page!;
        print(_currentPageValue);
      });
    });
  }

  @override
  void dispose() {
    super.dispose();
    pageController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.red,
      height: 320,
      child: PageView.builder(
        controller: pageController,
        itemCount: 5,
        itemBuilder: (context, position) {
          return _foodScreenItem(position);
        },
      ),
    );
  }

  Widget _foodScreenItem(int index) {
    Matrix4 matrix = Matrix4.identity();

    if (index == _currentPageValue.floor()) {
      var currentScale = 1 - (_currentPageValue - index) * (1 - _scaleFactor);
    }
    return Stack(
      children: [
        Container(
          height: 220,
          margin: const EdgeInsets.only(left: 5, right: 5),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: index.isEven
                ? const Color(0xFF69c5fd)
                : const Color(0xFF9294cc),
            image: const DecorationImage(
              fit: BoxFit.cover,
              image: AssetImage('assets/images/food3.jpg'),
            ),
          ),
        ),
        Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: 120,
            margin: const EdgeInsets.only(left: 30, right: 30, bottom: 15),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
            ),
            child: Container(
              padding: const EdgeInsets.only(left: 20, right: 20, top: 15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  BigText(
                    text: 'Indian Food',
                  ),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Wrap(
                        children: List.generate(
                          5,
                          (index) => const Icon(
                            Icons.star,
                            color: AppColors.mainColor,
                            size: 16,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(text: '4.5'),
                      const SizedBox(
                        width: 10,
                      ),
                      SmallText(text: '1000'),
                      const SizedBox(
                        width: 5,
                      ),
                      SmallText(text: 'comments'),
                    ],
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Row(
                    children: [
                      IconAndTextWidget(
                        text: "Normal",
                        icon: Icons.circle_sharp,
                        iconColor: AppColors.iconColor01,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconAndTextWidget(
                        text: "1.7km",
                        icon: Icons.location_on,
                        iconColor: AppColors.mainColor,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      IconAndTextWidget(
                        text: "32min",
                        icon: Icons.access_time_rounded,
                        iconColor: AppColors.iconColor02,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}
