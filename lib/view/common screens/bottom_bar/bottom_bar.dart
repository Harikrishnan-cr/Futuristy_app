import 'package:flutter/material.dart';
import 'package:futuristy/controller/bottom_bar_controller/bottom_bar_controller.dart';
import 'package:futuristy/controller/const/colors/colours.dart';
import 'package:futuristy/view/course%20screen/course_screen.dart';
import 'package:get/get.dart';

class BottomBarScreen extends StatelessWidget {
  BottomBarScreen({Key? key}) : super(key: key);
  final bottomBarController = Get.put(BottomBarController());
  final tabs = [
    CourseScreen(),  
    const Center(
      child: Text('our'),
    ),
    const Center(
      child: Text('Others'),
    ),
    const Center(
      child: Text('Account'),
    )
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: GetBuilder<BottomBarController>(builder: (bottomBarController) {
      return tabs[bottomBarController.currentIndex];
    }), bottomNavigationBar:
            GetBuilder<BottomBarController>(builder: (bottomBarController) {
      return BottomNavigationBar(
        currentIndex: bottomBarController.currentIndex,
        type: BottomNavigationBarType.fixed,
        unselectedLabelStyle: TextStyle(color: greyColour),
        selectedLabelStyle:
            TextStyle(color: redColour, fontWeight: FontWeight.w400),
        selectedItemColor: redColour,
        backgroundColor: whiteColour,
        items: [
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.school_outlined, color: redColour),
            icon: Icon(
              Icons.school_outlined,
              color: greyColour,
            ),
            label: 'Course',
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.shopping_bag_outlined, color: redColour),
              icon: Icon(Icons.shopping_bag_outlined, color: greyColour),
              label: 'My Course'),
          BottomNavigationBarItem(
            activeIcon: Icon(Icons.favorite_border_outlined, color: redColour),
            icon: Icon(Icons.favorite_border_outlined, color: greyColour),
            label: 'Wishlist',
          ),
          BottomNavigationBarItem(
              activeIcon: Icon(Icons.person_outline_rounded, color: redColour),
              icon: Icon(Icons.person_outline_rounded, color: greyColour),
              label: 'Account'),
        ],
        onTap: (value) {
          bottomBarController.changeCurrentIndex(value);
        },
      );
    }));
  }
}
