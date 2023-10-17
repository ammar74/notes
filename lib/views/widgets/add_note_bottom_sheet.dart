import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_button.dart';
import 'package:notes/views/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32.0, bottom: 16.0),
            child: CustomTextField(
              hintText: 'Title',
            ),
          ),
          CustomTextField(
              maxLines: 5 ,
              hintText: 'Subtitle'),
          CustomButton(buttonText: 'Add Note')
        ],
      ),
    );
  }
}
