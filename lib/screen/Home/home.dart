import 'package:flutter/material.dart';
import 'package:flutter_application_first/screen/Profile/profile.dart';
import 'package:flutter_application_first/utils/theme.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // LogIn Button Press Function
  void onSubmitBtn() {
    // Add your login logic here
    bool isLoggedIn = true; // For demonstration, assume login is successful

    if (isLoggedIn) {
      // Navigate to the Profile screen if login is successful
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Profile()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.menu),
            onPressed: () {
            },
          ),
          title: const Text(
            'Home',
            style: TextStyle(
              color: Colors.black,
              fontSize: 25,
              fontWeight: FontWeight.w500,
            ),
          ),
          backgroundColor: lightColorScheme.outlineVariant,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [

                const SizedBox(height: 50),

                ElevatedButton(
                  onPressed: onSubmitBtn, // Call the function here
                  child: const Text(
                    'Press Me',
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 18,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
