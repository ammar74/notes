import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  CustomTextField(
      {super.key,  required this.hintText, this.maxLines= 1, this.onSaved, this.onChanged});

  final String hintText;
  final int maxLines;
  final void Function(String?)? onSaved;
  final void Function(String)? onChanged;



  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 8.0),
      child: TextFormField(
        onChanged: onChanged,
        onSaved: onSaved,
        maxLines: maxLines,
        validator: (value){
          if(value?.isEmpty ?? true ) {
            return 'Field is Required';
          }else{
          return null;
    }

      },
        decoration: InputDecoration(
          labelText: hintText,
          enabledBorder:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
          border:  OutlineInputBorder(
            borderRadius: BorderRadius.circular(16.0),
            borderSide: const BorderSide(
              color: Colors.white,
            ),
          ),
        ),
      ),
    );
  }
}