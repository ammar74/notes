import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key,this.onTap,
    required this.buttonText,
    required this.backgroundColor,
    required this.textColor,
    this.isLoading= false});

  final String buttonText;
  VoidCallback? onTap;
  final Color backgroundColor;
  final Color textColor;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(
            vertical: 8.0
        ),
        height: 50,
        width: double.infinity,
        decoration: BoxDecoration(
          color: backgroundColor,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Center(
          child: isLoading? const CircularProgressIndicator(
            color: Colors.black,
          ) :Text(
            buttonText,
            style: TextStyle(
              fontSize: 18,
              color: textColor,
            ),
          ),
        ),
      ),
    );
  }
}