import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/widgets/custom_app_bar.dart';
import 'package:notes/widgets/custom_text_field.dart';

class EditNoteViewBody extends StatefulWidget {
  const EditNoteViewBody({super.key, required this.note});

  final NoteModel note;

  @override
  State<EditNoteViewBody> createState() => _EditNoteViewBodyState();
}

class _EditNoteViewBodyState extends State<EditNoteViewBody> {
  String? title,subTitle;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top :40.0, right: 18.0, left: 18.0),
      child: Column(
        children: [
           CustomAppBar(
            onPressed: (){
              widget.note.title = title ?? widget.note.title;
              widget.note.subTitle = subTitle ?? widget.note.subTitle;
              widget.note.save();
              BlocProvider.of<NotesCubit>(context).fetchAllNotes();
              Navigator.pop(context);
            },
            title: 'Edit Note',icon: Icons.check,),
          Padding(
            padding: const EdgeInsets.only(top: 32.0),
            child: CustomTextField(
              onChanged: (value){
                title= value;
              },
              hintText: widget.note.title,
            ),
          ),
          const SizedBox(
            height: 16.0,
          ),
          CustomTextField(
            onChanged: (value){
              subTitle=value;
            },
              maxLines: 5 ,
              hintText: widget.note.subTitle),
        ],
      ),
    );
  }
}
