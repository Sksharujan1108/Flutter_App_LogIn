import 'package:flutter/material.dart';
import 'package:flutter_application_first/utils/theme.dart';

class CustomButton extends StatelessWidget {
   final Function()? onTap;
  
  const CustomButton({
    super.key,
    required this.onTap, 
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 15), // Adjusted padding
        margin: const EdgeInsets.symmetric(horizontal: 25),
        decoration: BoxDecoration(
          color: lightColorScheme.primary,
          borderRadius: BorderRadius.circular(10)
        ),
        child: const Center(
          child: Text(
            'LogIn  🥳',
            style: TextStyle(
              color: Colors.white,
              fontSize: 22,
            ),
          
          )
        ),
      ),
    );
  }
}