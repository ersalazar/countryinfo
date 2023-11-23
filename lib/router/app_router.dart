


import 'package:countryinfo/models/menu_options.dart';
import 'package:countryinfo/ui/pages/dashboard.dart';
import 'package:countryinfo/ui/pages/profile_screen.dart';
import 'package:countryinfo/ui/pages/search_screen.dart';
import 'package:flutter/material.dart';

class AppRoute {
  static const initialRoute = 'newsFeed';

  static final menuOptions = [
    MenuOption(
      route: 'newsFeed',
      icon: Icons.article,
      name: 'News Feed',
      screen: const DashboardScreen(),
    ),
    MenuOption(
      route: 'search',
      icon: Icons.search,
      name: 'Search',
      screen: const SearchScreen(),
    ),
    MenuOption(
      route: 'profile',
      icon: Icons.person,
      name: 'Profile',
      screen: const ProfileScreen(),
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
    '/newsFeed': (BuildContext context) => const DashboardScreen(),
    '/search': (BuildContext context) => const SearchScreen(),
    '/profile': (BuildContext context) => const ProfileScreen(),
 
  };
}