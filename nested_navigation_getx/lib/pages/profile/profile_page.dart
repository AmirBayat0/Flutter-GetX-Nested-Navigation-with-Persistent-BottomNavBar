import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation_getx/constants/nav_ids.dart';

class Profile extends StatelessWidget {
  const Profile({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed('/profile/details', id: NavIds.profile),
          child: const Text('Go to Profile 👉DETAILS'),
        ),
      ),
    );
  }
}
