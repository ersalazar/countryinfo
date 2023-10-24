

import 'package:countryinfo/ui/pages/dashboard.dart';
import 'package:countryinfo/ui/pages/widgets/text_input_widget_with_title.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            const TextInputWidgetWithTitle(
              title: 'Email',
              placeholder: 'youremail@yourcompany.com', 
            ),
            const TextInputWidgetWithTitle(
              title: 'Password',
              placeholder: '********'
              ),
            ElevatedButton(
              onPressed: () {

                // if login succesfull
                Navigator.pushReplacement(
                  context,
                  MaterialPageRoute(builder: (context) => const DashboardScreen()),
                );
              },
              child: const Text('Login'),
            )
          ],)
      ),
    );
  }
}