import 'dart:developer';

import 'package:futuristy/model/categories_model/catagories_model.dart';
import 'package:futuristy/services/catagories_service/catagories_services.dart';
import 'package:get/get.dart';

class CatagoriesController extends GetxController {
  RxList<CatagoriesModel> catagoriesData = <CatagoriesModel>[].obs;

  RxBool isLoading = true.obs;

  void getAllCatagories() async {
    try {
      final data = await CatagoriesSevice().getCatagoriesData();

      if (data != null) {
        catagoriesData.value = data;

        log(catagoriesData[0].numberOfCourses.toString());
      }
    } catch (e) {
      Get.snackbar('Error', '$e');
    }
  }

  @override
  void onInit() {
    getAllCatagories();
    super.onInit();
  }
}
