import 'package:flutter/material.dart';
import 'package:flutter_application_first/screen/User/user.dart';
import 'package:flutter_application_first/utils/theme.dart';

class Profile extends StatefulWidget {
  // final User user;

  const Profile({
    super.key,
    // required this.user,
  });

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

      Navigator.of(context).pop();
      
      // Route set the Navigation
      // Navigator.popUntil(
      //   context,
      //   ModalRoute.withName(homeRoute), // Use ModalRoute.withName
      // );
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
        
        body: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              // Text('Name: ${widget.user.name}'),
              // Text('Designation: ${widget.user.designation}'),

              const SizedBox(height: 50),

              Center(
                child: ElevatedButton(
                  onPressed: onBackBtn, 
                  child: const Text(
                    'Back'
                  )
                )
              )
            ],
          ),
        ),
      ),
    );
  }
}