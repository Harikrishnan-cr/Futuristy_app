import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'package:futuristy/controller/catagories_controller/catagories_controller.dart';
import 'package:futuristy/view/course%20screen/course%20widget/catagories_widget.dart';
import 'package:get/get.dart';

class CategoriesTile extends StatelessWidget {
  CategoriesTile({Key? key}) : super(key: key);
  final catagoriesController = Get.put(CatagoriesController());
  @override
  Widget build(BuildContext context) {
    return Obx(() {
      final data = catagoriesController.catagoriesData;
      final size = data.length * 100;
      return  data.isNotEmpty ? SizedBox(
        width: double.infinity,
        height: double.parse(size.toString()),
        child: GridView.count(
          physics: const NeverScrollableScrollPhysics(),
          crossAxisCount: 2,
          children: List.generate(
              data.length,
              (index) => Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: CategoriesWidget(catCourseData: data[index]))),
        ),
      ) : const Center(child: CircularProgressIndicator(),); 
    });
  }
}
