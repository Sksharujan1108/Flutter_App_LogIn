import 'package:flutter/material.dart';
import 'package:flutter_application_first/route/route.dart';

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
      onGenerateRoute: routeController,
      initialRoute: loginRoute,
    );
  }
}
