import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation_getx/base_controller.dart';

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

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => NavigationBar(
          indicatorColor: Theme.of(context).primaryColor,
          elevation: 10,
          selectedIndex: BaseController.to.currentIndex.value,
          onDestinationSelected: (index) => BaseController.to.changePage(index),
          destinations: const [
            NavigationDestination(
              icon: Icon(Icons.home_outlined),
              selectedIcon: Icon(
                Icons.home,
                color: Colors.white,
              ),
              label: "Home",
            ),
            NavigationDestination(
              icon: Icon(Icons.person_2_outlined),
              selectedIcon: Icon(
                Icons.person_2,
                color: Colors.white,
              ),
              label: "Profile",
            ),
          ],
        ));
  }
}
