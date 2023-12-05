import 'package:flutter/material.dart';


class ConfigScreen extends StatefulWidget {
  const ConfigScreen({super.key});

  @override
  _ConfigScreenState createState() => _ConfigScreenState();
}

class _ConfigScreenState extends State<ConfigScreen> {
  bool enableNotifications = true;
  int selectedThemeIndex = 0;
  List<String> themes = ['Light', 'Dark', 'System Default'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('App Configuration'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'General Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            SwitchListTile(
              title:const  Text('Enable Notifications'),
              value: enableNotifications,
              onChanged: (value) {
                setState(() {
                  enableNotifications = value;
                });
              },
            ),
            const SizedBox(height: 24),
            const Text(
              'Theme Settings',
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
            const SizedBox(height: 16),
            for (int i = 0; i < themes.length; i++)
              RadioListTile<int>(
                title: Text(themes[i]),
                value: i,
                groupValue: selectedThemeIndex,
                onChanged: (value) {
                  setState(() {
                    selectedThemeIndex = value!;
                  });
                },
              ),
          ],
        ),
      ),
    );
  }
}