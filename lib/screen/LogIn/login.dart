import 'package:flutter/material.dart';
import 'package:flutter_application_first/screen/Home/home.dart';
import 'package:flutter_application_first/widgets/CustomTextInput/textInput.dart';
import 'package:flutter_application_first/widgets/Square_Tile/square_tile.dart';

import '../../widgets/CustomButton/button.dart';

class LogIn extends StatefulWidget {
  const LogIn({super.key});

  @override
  State<LogIn> createState() => _LogInState();
}

class _LogInState extends State<LogIn> {

  // text Editing Controller
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

// LogIn Button Press Function
  void onSubmitLogIn() {
    // Add your login logic here
   bool isLoggedIn = true; // For demonstration, assume login is successful

   if (isLoggedIn) {
      // Navigate to the HomeScreen if login is successful
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => const Home()),
      );
    }
  }

  

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: const Color.fromARGB(109, 211, 182, 235),
        body: SafeArea(
          child: Center(
            child: Column(
            children: [
              // this is use PaddingTo Formet 
              const SizedBox(height: 20),
              // log Set
              const Icon(
                Icons.lock,
                size: 100,
              ),

              const SizedBox(height: 30),

              // Text Welcome
              const Text(
                'This is Sk Bar First LogIn',
                style: TextStyle(
                  color: Color.fromARGB(255, 118, 228, 34),
                  fontFamily: AutofillHints.addressCity,
                  fontSize: 18
                ),
              ),

              const SizedBox(height: 50),

              // UserInPut The Email Field
              CustomTextInput(
                controller: emailController, 
                placeholder: 'Email', 
                hintText: 'UserName',
                obscureText: false,
              ),

              const SizedBox(height: 50),

              // UserInPut The PassWord Field
              CustomTextInput(
                controller: passwordController, 
                placeholder: 'Password', 
                hintText: 'Password',
                // Password Text Hide 
                obscureText: true,
              ),

              const SizedBox(height: 15),

              // Forgot the Passowrd Text Input 
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 25.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Text(
                      'Forgot Passowrd',
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15
                      ),
                    )
                  ],
                )
              ),

              const SizedBox(height: 50),

              // Button Box Set
              CustomButton(
                onTap: onSubmitLogIn, 
              ),

              const SizedBox(height: 30),

             // Or Continue With
              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.symmetric(horizontal: 20.0),
                        child: Text(
                          'Or Continue'
                        )
                      ),
                      Expanded(
                        child: Divider(
                          thickness: 0.5,
                          color: Colors.grey,
                        )
                      )
                    ],
                  ),
                ),

                const SizedBox(height: 30),

                // Square Tile Set *** set Image 
                const Row(
                    // Center ***** The Image 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Google Image Set
                    SquareTile(
                      imagePath: 'assets/images/Google.png',
                    ),

                    SizedBox(width: 10),

                    SquareTile(
                      imagePath: 'assets/images/fbNew.webp',
                    )
                  ],
                ),

                const SizedBox(height: 20),

                // Register Part Create *****
                const Row(
                    // Center ***** The Image 
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    // Google Image Set
                    Text(
                      'Not a Member?',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 18
                      )
                    ),

                    SizedBox(width: 10),

                    Text(
                      'Register',
                      style: TextStyle(
                        color: Colors.blue,
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      )
                    ),
                  ],
                ),

            ],
          ),
          ),
        )
      ),
    );
  }
}