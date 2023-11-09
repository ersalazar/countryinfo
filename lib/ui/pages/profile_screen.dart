import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // Replace these with actual user data
    final String userName = "John Doe";
    final String userBio = "Flutter Developer";
    final String userImage =
        "https://cdn-icons-png.flaticon.com/512/149/149071.png"; // Replace with actual image path

    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile"),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 80,
              backgroundImage: AssetImage(userImage),
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
              child: const Text("Edit Profile"),
            ),
          ],
        ),
      ),
    );
  }
}
