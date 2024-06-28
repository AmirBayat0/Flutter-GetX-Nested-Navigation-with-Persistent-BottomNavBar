import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation_getx/constants/nav_ids.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
        automaticallyImplyLeading: false,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () => Get.toNamed('/home/details', id: NavIds.home),
          child: const Text('Go to Home 👉DETAILS'),
        ),
      ),
    );
  }
}
