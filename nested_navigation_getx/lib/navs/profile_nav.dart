import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation_getx/constants/nav_ids.dart';
import 'package:nested_navigation_getx/pages/profile/group_details.dart';
import 'package:nested_navigation_getx/pages/profile/profile_details_page.dart';
import 'package:nested_navigation_getx/pages/profile/profile_page.dart';

class ProfileNav extends StatelessWidget {
  const ProfileNav({super.key});
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
      key: Get.nestedKey(NavIds.profile),
      onGenerateRoute: (settings) {
        if (settings.name == '/profile/details') {
          return GetPageRoute(
            settings: settings,
            page: () => const ProfileDetails(),
          );
        } else if (settings.name == '/profile/details/group') {
          return GetPageRoute(
            settings: settings,
            page: () => GroupDetails(
              index: settings.arguments as int,
            ),
          );
        } else {
          return GetPageRoute(
            settings: settings,
            page: () => const Profile(),
          );
        }
      },
    );
  }
}
