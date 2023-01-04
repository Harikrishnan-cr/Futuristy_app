import 'package:get/get.dart';

class BottomBarController extends GetxController {
  var currentIndex = 0;
  void changeCurrentIndex(index) {
    currentIndex = index;
    update();
  }
}
