
import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_search_icon.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            'Notes',
            style: TextStyle(
              fontSize: 22,
            ),
          ),
          CustomSearchIcon(),
        ],
      ),
    );
  }
}
