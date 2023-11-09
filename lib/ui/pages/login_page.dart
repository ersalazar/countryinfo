import 'package:countryinfo/blocs/auth/auth_bloc.dart';
import 'package:countryinfo/data/models/user.dart';
import 'package:countryinfo/ui/pages/dashboard.dart';
import 'package:countryinfo/ui/pages/home_screen.dart';
import 'package:countryinfo/ui/pages/widgets/text_input_widget_with_title.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final Authenticator authenticator = Authenticator();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Future<void> _login(BuildContext context) async {
    final username = emailController.text;
    final password = passwordController.text;

    try {
      User? user = await authenticator.authenticate(username, password);
      if (user.runtimeType == User) {
        // Authentication was successful, navigate to the HomeScreen
        Navigator.pushReplacement(
          context,
          MaterialPageRoute(builder: (context) => const HomeScreen()),
        );
      } else {
        // Handle authentication failure (e.g., display an error message)
        // You can add a SnackBar or show an error dialog
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            title: const Text('Authentication Failed'),
            content: const Text('Invalid email or password. Please try again.'),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text('OK'),
              ),
            ],
          ),
        );
      }
    } catch (e) {
      // Handle other errors, such as network issues
      throw Error();
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Center(
        child: Column(
          children: [
            TextInputWidgetWithTitle(
              title: 'Email',
              placeholder: 'youremail@yourcompany.com',
              controller: emailController,
            ),
            TextInputWidgetWithTitle(
              title: 'Password',
              placeholder: '********',
              controller: passwordController,
            ),
            ElevatedButton(
              onPressed: () {
                _login(context);
              },
              child: const Text('Login'),
            )
          ],
        ),
      ),
    );
  }
}
