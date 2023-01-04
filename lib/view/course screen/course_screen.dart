



import 'package:flutter/material.dart';
import 'package:futuristy/controller/catagories_controller/catagories_controller.dart';
import 'package:futuristy/controller/top_course_controller/top_course_controller.dart';
import 'package:get/get.dart';

class CourseScreen extends StatelessWidget {
   CourseScreen({Key? key}) : super(key: key);
final topCourceController = Get.put(TopCourceController());  
final catagoriesController = Get.put(CatagoriesController());  
  @override
  Widget build(BuildContext context) {
    

    return Scaffold( 
      body: Center(
        child: Text('Data'),
      ),
    );
  }
}