// ignore: file_names
import 'package:flutter/material.dart';

// Define a new widget named CustomTextInput, which is a StatelessWidget.
class CustomTextInput extends StatelessWidget {
  // Declare instance variables for the widget.
  final String placeholder;
  final String hintText;
  final TextEditingController controller;
  final bool obscureText;

  // Constructor for initializing the widget with required parameters.
  const CustomTextInput({
    // Constructor for initializing the widget with required parameters.
    super.key,
    required this.placeholder,
    required this.hintText,
    required this.controller,
    this.obscureText = false,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 22.0),
      child: TextField(
        controller: controller,
        obscureText: obscureText,
        decoration: InputDecoration(
          // TextBox Border......
          enabledBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
          ),
          focusedBorder: const OutlineInputBorder(
            borderSide: BorderSide(color: Color.fromARGB(255, 175, 170, 170)),
          ),
          fillColor: Colors.white,
          filled: true,
          hintText: hintText,
        ),
      ),
    );
  }
}
