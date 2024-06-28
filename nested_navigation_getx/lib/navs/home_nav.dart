import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation_getx/constants/nav_ids.dart';
import 'package:nested_navigation_getx/pages/home/home_details_page.dart';
import 'package:nested_navigation_getx/pages/home/home_page.dart';

class HomeNav extends StatelessWidget {
  const HomeNav({super.key});
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
  @override
  Widget build(BuildContext context) {
    return Navigator(
      key: Get.nestedKey(NavIds.home),
      onGenerateRoute: (settings) {
        if (settings.name == '/home/details') {
          return GetPageRoute(
            settings: settings,
            page: () => const HomeDetails(),
          );
        } else {
          return GetPageRoute(
            settings: settings,
            page: () => const Home(),
          );
        }
      },
    );
  }
}
