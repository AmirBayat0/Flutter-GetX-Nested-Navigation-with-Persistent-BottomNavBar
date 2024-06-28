import 'package:flutter/material.dart';
import 'package:get/get_state_manager/src/rx_flutter/rx_obx_widget.dart';
import 'package:nested_navigation_getx/base_controller.dart';
import 'package:nested_navigation_getx/bottom_navigation_bar.dart';
import 'package:nested_navigation_getx/navs/home_nav.dart';
import 'package:nested_navigation_getx/navs/profile_nav.dart';

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
class BaseScreen extends StatelessWidget {
  const BaseScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => IndexedStack(
            index: BaseController.to.currentIndex.value,
            children: const [
              HomeNav(),
              ProfileNav(),
            ],
          )),
      bottomNavigationBar: const BottomNavBar(),
    );
  }
}
