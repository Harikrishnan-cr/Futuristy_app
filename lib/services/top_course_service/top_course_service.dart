import 'dart:developer';

import 'package:futuristy/controller/const/api_const/api_const.dart';
import 'package:futuristy/model/top_course_model/top_course.dart';
import 'package:http/http.dart' as http;

class TopCourseService {
  Future<List<TopCourseModel>?> getTopCourseData() async {
    var responce = await http.get(Uri.parse(topCourseUri));

    try {
      if (responce.statusCode == 200) {
        return topCourseModelFromJson(responce.body);
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
