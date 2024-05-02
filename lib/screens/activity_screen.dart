import 'package:church/database/activity_images.dart';
import 'package:flutter/material.dart';

class ActivityScreen extends StatelessWidget {
  const ActivityScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Nos photos souvenir"),
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 1,
      ),
      body: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            mainAxisSpacing: 4,
            crossAxisSpacing: 4,
            childAspectRatio: 5 / 7,
          ),
          itemCount: activitesImages.length,
          itemBuilder: (context, index) {
            return Image.asset(
              activitesImages[index],
              fit: BoxFit.cover,
            );
          }),
    );
  }
}
