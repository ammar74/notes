import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:notes/cubits/add_note_cubit.dart';
import 'package:notes/cubits/notes_cubit.dart';
import 'package:notes/widgets/add_note_form.dart';
import 'package:toast/toast.dart';

class AddNoteBottomSheet extends StatelessWidget {
  const AddNoteBottomSheet({super.key});

  @override
  Widget build(BuildContext context) {
    ToastContext().init(context);
    return BlocProvider(
      create: (context) => AddNoteCubit(),
      child: BlocConsumer<AddNoteCubit, AddNoteState>(
        listener: (context, state) {
          if (state is AddNoteFailure) {
            print('Failed ${state.errMessage}');
          }
          if (state is AddNoteSuccess) {
            BlocProvider.of<NotesCubit>(context).fetchAllNotes();
            Navigator.pop(context);
            Toast.show(
                "Note Added Successfully",
                duration: Toast.lengthShort,
                gravity:  Toast.bottom);
          }
        },
        builder: (context, state) {
          return  AbsorbPointer(
            absorbing: state is AddNoteLoading ? true : false,
            child:  Padding(
                  padding: EdgeInsets.only(
                    left: 16.0,
                    right: 16.0,
                    bottom: MediaQuery.of(context).viewInsets.bottom,
                  ),
                  child: const SingleChildScrollView(child: AddNoteForm()),
                ),
          );
        },
      ),
    );
  }
}
