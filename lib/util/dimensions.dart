import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  // Dynamic height for Card Container
  static double paveView1 = screenHeight / 2.33;
  static double pageView = screenHeight / 2.64;
  static double pageViewController = screenHeight / 3.84;
  static double pageViewTextController = screenHeight / 7.02;

  // Dynamic height for padding and margin
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height30 = screenHeight / 28;
  static double height45 = screenHeight / 18.66;
  static double height55 = screenHeight / 15.27;

  // Dynamic width for padding and margin
  static double width5 = screenWidth / 82;
  static double width10 = screenWidth / 41.1;
  static double width15 = screenWidth / 27.4;
  static double width20 = screenWidth / 20.55;
  static double width30 = screenWidth / 13.7;
  static double width45 = screenWidth / 9.13;
  static double width55 = screenWidth / 7.47;

  // Dynamic Font Size
  static double font16 = screenHeight / 52.5;
  static double font20 = screenHeight / 42.2;
  static double font26 = screenHeight / 32.30;

  // Dynamic Radius
  static double radius5 = screenHeight / 168;
  static double radius15 = screenHeight / 56;
  static double radius20 = screenHeight / 42;

  // Dynamic IconSize
  static double iconSize24 = screenHeight / 35;
  static double iconSize16 = screenHeight / 52.75;

  // ListView Size
  static double listviewImgSize = screenWidth / 3.25;
  static double listviewTextContSize = screenWidth / 3.9;

  // Popular Food Section
  static double popularFoodImageSize = screenHeight / 2.4;

  // Bottom Navigation Bar height
  static double bottomNavBarHeight = screenHeight / 7.03;
}
