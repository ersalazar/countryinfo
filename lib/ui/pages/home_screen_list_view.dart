import 'package:countryinfo/router/app_router.dart';

import 'package:flutter/material.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App with Router'),
      ),
      body: ListView.builder(
        itemCount: AppRoute.menuOptions.length,
        itemBuilder: (context, index) {
          final option = AppRoute.menuOptions[index];
          return ListTile(
            leading: Icon(
              option.icon,
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