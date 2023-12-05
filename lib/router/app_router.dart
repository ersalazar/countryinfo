


import 'package:countryinfo/data/models/menu_options.dart';
import 'package:countryinfo/ui/pages/config_screen.dart';
import 'package:countryinfo/ui/pages/dashboard.dart';
import 'package:countryinfo/ui/pages/payment_screen.dart';
import 'package:countryinfo/ui/pages/profile_screen.dart';
import 'package:countryinfo/ui/pages/search_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const initialRoute = 'newsFeed';

  static final menuOptions = [
    MenuOption(
      route: 'configuration',
      icon: Icons.settings,
      name: 'Configuration',
      screen: const ConfigScreen(),
    ),
    MenuOption(
      route: 'profile',
      icon: Icons.person,
      name: 'Profile',
      screen: const ProfileScreen(),
    ),
    MenuOption(
      route: 'payment',
      icon: Icons.article,
      name: 'Payment',
      screen: const PaymentScreen(),
    ),
    
  ];

  static Map<String, Widget Function(BuildContext)> getAppRoutes() {
    Map<String, Widget Function(BuildContext)> appRoutes = {};
    for (var option in menuOptions) {
      appRoutes.addAll({
        option.route: (BuildContext context) => option.screen,
      });
    }
    return appRoutes;
  }

  static Map<String, Widget Function(BuildContext)> routes = {
    '/payment': (BuildContext context) => const DashboardScreen(),
    '/configuration': (BuildContext context) => const SearchScreen(),
    '/profile': (BuildContext context) => const ProfileScreen(),
 
  };
}