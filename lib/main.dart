import 'package:flutter/material.dart';
import 'package:flutter_getx/home.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:get/get_navigation/src/routes/get_route.dart';
import 'package:get/get_navigation/src/routes/transitions_type.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: Home(),
    );
    // return GetMaterialApp(
    //   debugShowCheckedModeBanner: false,
    //   initialRoute: '/',
    //   getPages: [
    //     GetPage(name: '/', page: () => Page1()),
    //     GetPage(name: '/two', page: () => Page2()),
    //     GetPage(
    //         name: '/three', page: () => Page3(), transition: Transition.zoom),
    //   ],
    // );
  }
}
