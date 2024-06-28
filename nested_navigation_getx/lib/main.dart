import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation_getx/base_controller.dart';
import 'package:nested_navigation_getx/base_screen.dart';

void main() {
  Get.put(BaseController());
  runApp(const MyApp());
}

//
// Created by CodeWithFlexZ
// Tutorials on my YouTube
//
//! Instagram
//! @CodeWithFlexZ
//
//? GitHub
//? AmirBayat0
//
//* YouTube
//* Programming with FlexZ
//

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
        primaryColor: Colors.indigo,
      ),
      home: const Banner(
        message: 'FLEXZ',
        location: BannerLocation.topEnd,
        child: BaseScreen(),
      ),
    );
  }
}
