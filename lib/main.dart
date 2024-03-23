import 'package:flutter/material.dart';
import 'package:flutter_application_first/screen/Home/home.dart';
import 'package:flutter_application_first/screen/LogIn/login.dart';
import 'package:flutter_application_first/screen/Profile/profile.dart';
import 'package:flutter_application_first/screen/User/user.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.deepOrange,
      ),
  /* 
  this is best way in route navigation Because...
      some time screen to screen pass the any argument 
      that time defined this route navigation
  */
      onGenerateRoute: (RouteSettings routeSetting) {
        if (routeSetting.name == '/') {
          return
            MaterialPageRoute(builder: (context) => const LogIn());
        } else if (routeSetting.name == '/home') {
          final user = User.getAllUsers()[0]; // Get the first user from the list
          return 
            MaterialPageRoute(builder: (context) => Home(user: user));
        } else if (routeSetting.name == '/profile') {
          final user = routeSetting.arguments as User;
          return 
            MaterialPageRoute(builder: (context) => Profile(user: user));
        } else {
          return 
            MaterialPageRoute(
              builder: (context) => Scaffold(
                body: Container(
                  alignment: Alignment.center,
                  child: const Text('Not Found This  Page'),
                )
              ),
            );
        }
      },

    );
  }
}
