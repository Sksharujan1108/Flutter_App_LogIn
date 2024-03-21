import 'package:flutter/material.dart';
import 'package:flutter_application_first/screen/Home/home.dart';
import 'package:flutter_application_first/utils/theme.dart';

class Profile extends StatefulWidget {
  const Profile({super.key});

  @override
  State<Profile> createState() => _ProfileState();
}

class _ProfileState extends State<Profile> {

  // LogIn Button Press Function
  void onBackBtn() {
    // Add your login logic here
   bool isLoggedIn = true; // For demonstration, assume login is successful

   if (isLoggedIn) {
      // Navigate to the HomeScreen if login is successful
      Navigator.pop(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: const Icon(Icons.arrow_back),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          title: const Text(
            'Profile',
            style: TextStyle(color: Colors.black),
          ),
          backgroundColor: lightColorScheme.outlineVariant,
        ),
        body: SafeArea(
          child: Center(
            child: Column(
              children: [

                const SizedBox(height: 50),

                ElevatedButton(
                  onPressed: onBackBtn, 
                  child: const Text(
                    'Back'
                  )
                )
              ],
            ),
          )
        ),
      ),
    );
  }
}