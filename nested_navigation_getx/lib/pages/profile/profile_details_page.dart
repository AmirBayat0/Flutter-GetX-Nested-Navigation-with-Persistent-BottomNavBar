import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:nested_navigation_getx/constants/nav_ids.dart';

class ProfileDetails extends StatelessWidget {
  const ProfileDetails({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Profile Details')),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: ListView.builder(
          itemCount: 30,
          itemBuilder: (ctx, i) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 4),
              child: Card(
                child: SizedBox(
                  height: 90,
                  child: ListTile(
                    onTap: () {
                      Get.toNamed('/profile/details/group',
                          id: NavIds.profile, arguments: i);
                    },
                    leading: const Icon(Icons.group),
                    title: const Text(
                      'GROUP NUMBER',
                    ),
                    trailing: Text(i.toString()),
                    subtitle: const Text(
                        'In publishing and graphic design, Lorem ipsum is a placeholder text commonly...'),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
