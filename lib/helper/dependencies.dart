import 'package:get/get.dart';
import 'package:shop_app/controllers/popular_product_controller.dart';
import 'package:shop_app/data/api/api_client.dart';
import 'package:shop_app/data/repository/popular_product_repo.dart';
import 'package:shop_app/util/app_constants.dart';

Future<void> init() async {
  //API Client
  Get.lazyPut(() => ApiClient(appBaseUrl: AppConstants.BASE_URL));

  //Repos
  Get.lazyPut(() => PopularProductRepo(apiClient: Get.find()));

  //Controller
  Get.lazyPut(() => PopularProductController(popularProductRepo: Get.find()));
}
