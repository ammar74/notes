import 'package:flutter/material.dart';
import 'package:notes/views/widgets/notes_item.dart';

class NotesListView extends StatelessWidget {
  const NotesListView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 16.0),
      child: ListView.builder(
        padding: EdgeInsets.zero,
          itemBuilder: (context, index){
            return const NotesItem();
          }),
    );
  }
}
