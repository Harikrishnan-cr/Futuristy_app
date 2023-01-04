import 'package:flutter/material.dart';
import 'package:futuristy/controller/const/colors/colours.dart';
import 'package:futuristy/view/common%20screens/bottom_bar/bottom_bar.dart';

import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        canvasColor: whiteColour,
      ),
      home: BottomBarScreen(),
    );
  }
}
