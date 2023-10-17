import 'package:flutter/material.dart';
import 'package:notes/views/widgets/add_note_bottom_sheet.dart';
import 'package:notes/views/widgets/notes_view_body.dart';

class NotesView extends StatelessWidget {
  const NotesView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.white.withOpacity(0.8),
        onPressed: () {
          showModalBottomSheet(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0)
            ),
              context: context,
              builder: (context){
                return const AddNoteBottomSheet();
              });
        },
        child: const Icon(Icons.add,
       ),
      ),
      body: const NotesViewBody(),
    );
  }
}


