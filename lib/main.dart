import 'package:flutter/material.dart';
import 'package:flutter_application_first/route/route.dart';
import 'package:flutter_application_first/screen/Home/home.dart';
import 'package:flutter_application_first/screen/LogIn/login.dart';
import 'package:flutter_application_first/screen/Profile/profile.dart';

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

      // Routes set up Navigation Model
      // 01 ***********
      // onGenerateRoute: routeController,
      // initialRoute: loginRoute,

      // 02 ***********

      // MaterialApp's InitialRoute and routes Property
      // initialRoute: '/',
      // routes: {
      //   '/': (context) => const LogIn(),
      //   '/home': (context) => const Home(),
      //   '/profile': (context) => const Profile()
      // },

      // 03 ***********
      // // MaterialApp's onGenerateRoute Property
  /* 
  this is best way in route navigation Because...
      some time screen to screen pass the any argument 
      that time defined this route navigation
  */
      onGenerateRoute: (RouteSettings routeSetting) {
        if (routeSetting.name == '/') {
          return MaterialPageRoute(builder: (context) => const LogIn());
        } else if (routeSetting.name == '/home') {
          return MaterialPageRoute(builder: (context) => const Home());
        } else if (routeSetting.name == '/profile') {
          return MaterialPageRoute(builder: (context) => const Profile());
        } else {
          return MaterialPageRoute(
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
