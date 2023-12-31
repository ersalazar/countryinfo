import 'package:countryinfo/ui/app_colors.dart';
import 'package:countryinfo/ui/pages/login_page.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: AppColors.lightTheme,
      darkTheme: AppColors.darkTheme,
      home: LoginScreen(),
    );
  }
}
           