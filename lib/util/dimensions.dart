import 'package:get/get.dart';

class Dimensions {
  static double screenHeight = Get.context!.height;
  static double screenWidth = Get.context!.width;

  //Dynamic height for Card Container
  static double paveView1 = screenHeight / 2.33;
  static double pageView = screenHeight / 2.64;
  static double pageViewController = screenHeight / 3.84;
  static double pageViewTextController = screenHeight / 7.02;

  //Dynamic height for padding and margin
  static double height10 = screenHeight / 84.4;
  static double height15 = screenHeight / 56.27;
  static double height20 = screenHeight / 42.2;
  static double height45 = screenHeight / 18.66;
  static double height55 = screenHeight / 15.27;

  //Dynamic width for padding and margin
  static double width5 = screenHeight / 168;
  static double width10 = screenHeight / 84.4;
  static double width15 = screenHeight / 56.27;
  static double width20 = screenHeight / 42.2;
  static double width30 = screenHeight / 28;
  static double width45 = screenHeight / 18.66;
  static double width55 = screenHeight / 15.27;

  //Dynamic Font Size
  static double font16 = screenHeight / 52.5;
  static double font20 = screenHeight / 42.2;

  //Dynamic Radius
  static double radius5 = screenHeight / 168;
  static double radius15 = screenHeight / 56;
  static double radius20 = screenHeight / 42;

  //Dynamic IconSize
  static double iconSize24 = screenHeight / 35;
}
