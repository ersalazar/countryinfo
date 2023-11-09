import 'package:countryinfo/ui/app_colors.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  final String userName = "John Doe";
  final String userBio = "Flutter Developer";
  final String userImage =
      "https://cdn-icons-png.flaticon.com/512/149/149071.png";

  const ProfileScreen({super.key}); // Replace with actual image path

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
        backgroundColor: AppColors.primaryColor, // Use the primary color from the AppColors class
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: NetworkImage(userImage), // Use NetworkImage for online images
            ),
            const SizedBox(height: 16.0),
            Text(
              userName,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
              ),
            ),
            Text(
              userBio,
              style: const TextStyle(
                fontSize: 16,
                color: Colors.grey,
              ),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Add functionality to edit the profile
              },
              style: ElevatedButton.styleFrom(
                primary: AppColors.accentColor, // Use the accent color for the button
              ),
              child: const Text("Edit Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
