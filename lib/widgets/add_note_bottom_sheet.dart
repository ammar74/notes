import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 32.0, bottom: 8.0),
              child: CustomTextField(
                hintText: 'Title',
              ),
            ),
            CustomTextField(
                maxLines: 5 ,
                hintText: 'Content'),
            const SizedBox(height: 32),
            CustomButton(
                buttonText: 'Add Note',
                backgroundColor: Colors.amberAccent,
                textColor: Colors.black),
            const SizedBox(height: 16,),
          ],
        ),
      ),
    );
  }
}
