import 'package:flutter/material.dart';
import 'package:flutter_application_first/screen/Home/home.dart';
import 'package:flutter_application_first/screen/LogIn/login.dart';
import 'package:flutter_application_first/screen/Profile/profile.dart';

// Route Names
const String loginRoute = 'Login';
const String homeRoute = 'Home';
const String profileRoute = 'Profile';

Route<dynamic> routeController(RouteSettings settings) {
  switch (settings.name) {
    case loginRoute:
      return MaterialPageRoute(builder: (context) => const LogIn());
    case homeRoute:
      return MaterialPageRoute(builder: (context) => const Home());
    case profileRoute:
      return MaterialPageRoute(builder: (context) => const Profile());
    default:
      throw Exception('This Route Name Does Not Exist');
  }
}