import 'package:countryinfo/router/app_router.dart';
import 'package:countryinfo/ui/app_colors.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App with Router'),
        backgroundColor: AppColors.primaryColor,
      ),
      body: ListView.builder(
        itemCount: AppRoute.menuOptions.length,
        itemBuilder: (context, index) {
          final option = AppRoute.menuOptions[index];
          return ListTile(
            leading: Icon(
              option.icon,
              color: AppColors.primaryColor,
            ),
            title: Text(option.name),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => option.screen),
              );
            },
          );
        },
      ),
    );
  }
}