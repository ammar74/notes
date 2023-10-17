import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,  required this.hintText, this.onChanged, this.maxLines= 1});

  final String hintText;
  Function(String)? onChanged;
  final int maxLines;


  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextField(
        maxLines: maxLines,
        onChanged: onChanged,
        decoration: InputDecoration(
          labelText: hintText,
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          border:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}