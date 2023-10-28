import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/notes_cubit.dart';
import 'package:notes/models/note_model.dart';
import 'package:notes/views/edit_note_view.dart';

class NotesItem extends StatelessWidget {
  const NotesItem({super.key, required this.note});

  final NoteModel note;

  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const EditNoteView();
        })
        );
      },
      child: Padding(
        padding: const EdgeInsets.only(bottom: 8.0),
        child: Container(
          padding: const EdgeInsets.only(top: 16.0, bottom: 16.0,left: 8.0),
          decoration: BoxDecoration(
            color: Color(note.color),
            borderRadius: BorderRadius.circular(16.0),
          ),
          child:  Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
               ListTile(
                isThreeLine: true,
                title:  Text(
                    note.title,
                  style:const TextStyle(
                    fontSize: 26,
                    color: Colors.black,
                  ),
                ),
                subtitle: Padding(
                  padding: const EdgeInsets.only(top:8.0),
                  child: Text(
                    note.subTitle,
                    style: const TextStyle(
                      fontSize: 18,
                      color: Colors.black45,
                    ),),
                ),
                trailing: IconButton(
                   onPressed: (){
                     note.delete();
                     BlocProvider.of<NotesCubit>(context).fetchAllNotes();
                   },
                    icon: const Icon(
                      Icons.delete,
                      size: 36,
                      color: Colors.black,)
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(right: 16.0, top: 8.0),
                child: Text(
                  note.date,
                  style: const TextStyle(
                  color: Colors.black45
                ),),
              )
            ],
          ),
        ),
      ),
    );
  }
}
