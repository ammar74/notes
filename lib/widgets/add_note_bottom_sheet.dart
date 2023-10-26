import 'package:flutter/material.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_text_field.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.0),
      child: SingleChildScrollView(
        child: AddNoteForm(),
      ),
    );
  }
}

class AddNoteForm extends StatefulWidget {
  const AddNoteForm({
    super.key,
  });

  @override
  State<AddNoteForm> createState() => _AddNoteFormState();
}

class _AddNoteFormState extends State<AddNoteForm> {

  final GlobalKey<FormState> formKey=GlobalKey();
  AutovalidateMode autovalidateMode =AutovalidateMode.disabled;
  String? title,subTitle;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: formKey,
      autovalidateMode: autovalidateMode,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 32.0, bottom: 8.0),
            child: CustomTextField(
              onSaved: (value){
                title=value;
              },
              hintText: 'Title',
            ),
          ),
          CustomTextField(
              onSaved: (value){
                subTitle=value;
              },
              maxLines: 5 ,
              hintText: 'Content'),
          const SizedBox(height: 32),
          CustomButton(
            onTap: (){
              if(formKey.currentState!.validate()){
                formKey.currentState!.save();
              }else{
                autovalidateMode = AutovalidateMode.always;
                setState(() {
                });
              }
            },
              buttonText: 'Add Note',
              backgroundColor: Colors.amberAccent,
              textColor: Colors.black),
          const SizedBox(height: 16,),
        ],
      ),
    );
  }
}
