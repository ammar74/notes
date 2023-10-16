
import 'package:flutter/material.dart';
import 'package:notes/views/widgets/custom_app_bar.dart';
import 'package:notes/views/widgets/notes_item.dart';
import 'package:notes/views/widgets/notes_list_view.dart';

class NotesViewBody extends StatelessWidget {
  const NotesViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.only(top :40.0, right: 18.0, left: 18.0),
      child: Column(
        children: [
          CustomAppBar(),
          Expanded(child: NotesListView()),
        ],
      ),
    );
  }
}
