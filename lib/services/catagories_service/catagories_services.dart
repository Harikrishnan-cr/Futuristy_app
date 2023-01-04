import 'dart:developer';

import 'package:futuristy/controller/const/api_const/api_const.dart';
import 'package:futuristy/model/categories_model/catagories_model.dart';
import 'package:http/http.dart' as http;

class CatagoriesSevice {
  Future<List<CatagoriesModel>?> getCatagoriesData() async {
    var responce = await http.get(Uri.parse(catagoriesUri));

    try {
      if (responce.statusCode == 200) {
        return catagoriesModelFromJson(responce.body);
      } else {
        return null;
      }
    } catch (e) {
      log(e.toString());
    }
    return null;
  }
}
