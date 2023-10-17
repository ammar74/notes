import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  CustomButton({super.key,this.onTap, required this.buttonText});

  final String buttonText;
  VoidCallback? onTap;
  final

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
          color: Colors.,
          borderRadius: BorderRadius.circular(16.0),
        ),
        child: Center(
          child: Text(
            buttonText,
            style:const TextStyle(
              fontSize: 18,
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}