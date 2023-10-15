import 'package:flutter/material.dart';

class CustomSearchIcon extends StatelessWidget {
  const CustomSearchIcon({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      width: 45,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8.0),
          color: Colors.white.withOpacity(0.2)
      ),
      child: const Center(child: Icon(Icons.search)),
    );
  }
}
