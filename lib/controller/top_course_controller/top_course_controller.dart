import 'package:futuristy/model/top_course_model/top_course.dart';
import 'package:futuristy/services/top_course_service/top_course_service.dart';
import 'package:get/get.dart';

class TopCourceController extends GetxController {
  RxList<TopCourseModel> topCourseData = <TopCourseModel>[].obs;

  RxBool isLoading = true.obs;

  void getAllTopCources() async {
    try {
      final data = await TopCourseService().getTopCourseData();

      if (data != null) {
        topCourseData.value = data;
      }
    } catch (e) {
      Get.snackbar('Error', '$e');
    }
  }

  @override
  void onInit() {
    getAllTopCources();
    super.onInit();
  }
}
