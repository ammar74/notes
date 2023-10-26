
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/custom_button.dart';
import 'package:notes/widgets/custom_text_field.dart';

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
                  var noteModel= NoteModel(
                      title: title!,
                      subTitle: subTitle!,
                      date: DateTime.now().toString(),
                      color: Colors.blueAccent.value);
                  BlocProvider.of<AddNoteCubit>(context).addNote(noteModel);
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
