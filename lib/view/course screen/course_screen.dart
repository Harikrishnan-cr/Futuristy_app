import 'package:flutter/material.dart';
import 'package:futuristy/controller/catagories_controller/catagories_controller.dart';
import 'package:futuristy/controller/const/colors/colours.dart';
import 'package:futuristy/controller/top_course_controller/top_course_controller.dart';
import 'package:futuristy/view/course%20screen/categories.dart';
import 'package:futuristy/view/course%20screen/course%20widget/course_widget.dart';
import 'package:get/get.dart';

class CourseScreen extends StatelessWidget {
  CourseScreen({Key? key}) : super(key: key);
  final topCourceController = Get.put(TopCourceController());
  final catagoriesController = Get.put(CatagoriesController());
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 28),
            child: Image.network(
              'https://play-lh.googleusercontent.com/F1p_bkkAqEH31_xGLQ6u9bEihzLChxy7m3uoRRvMT3hzck5hkTUtrmqLrkwOV2eu77Q=s48-rw',
            ),
          ),
          elevation: .5,
          backgroundColor: whiteColour,
        ),
        body: ListView(
          children: [
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text('Top Course',
                      style: TextStyle(
                          color: Colors.black,
                          fontSize: 20,
                          fontWeight: FontWeight.w500)),
                  Text('All Courses>>',
                      style: TextStyle(color: Color.fromARGB(255, 4, 78, 189)))
                ],
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            TopCourseTile(),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: Text('Categories',
                  style: TextStyle(
                      color: Colors.black,
                      fontSize: 20,
                      fontWeight: FontWeight.w500)),
            ),
            CategoriesTile()
          ],
        ),

        floatingActionButton: FloatingActionButton(
          backgroundColor: Colors.black,
          child: Icon(Icons.line_axis_rounded),
          onPressed: () {
          return null; 
        },),
        
        );

      
  }
}

class TopCourseTile extends StatelessWidget {
  TopCourseTile({
    Key? key,
  }) : super(key: key);
  final topCourceController = Get.put(TopCourceController());
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: 230,
      child: Obx(() {
        final data = topCourceController.topCourseData;
        return ListView(
            scrollDirection: Axis.horizontal,
            children: List.generate(topCourceController.topCourseData.length,
                (index) {
              return Padding(
                padding: const EdgeInsets.only(top: 8, left: 12, right: 5),
                child: TopCourseWidget(
                  topCourseData: data[index],
                ),
              );
            }));
      }),
    );
  }
}
