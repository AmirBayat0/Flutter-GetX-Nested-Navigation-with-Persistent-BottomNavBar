import 'package:flutter/material.dart';

class GroupDetails extends StatelessWidget {
  const GroupDetails({super.key, required this.index});

  final int index;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Group Details"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Icon(
              Icons.group,
              size: 50,
            ),
            Text(
              'GROUP NUMBER $index',
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              'In publishing and graphic design, Lorem ipsum is a placeholder text commonly...',
              textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14, color: Colors.grey.shade700),
            ),
          ],
        ),
      ),
    );
  }
}
