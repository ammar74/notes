import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatelessWidget {
  const EditNoteViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top :40.0, right: 18.0, left: 18.0),
      child: Column(
        children: [
          const CustomAppBar(title: 'Edit Note',icon: Icons.check,),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: CustomTextField(
              hintText: 'Title',
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          CustomTextField(
              maxLines: 5 ,
              hintText: 'Content'),

        ],
      ),
    );
  }
}
