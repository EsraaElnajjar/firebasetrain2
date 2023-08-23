
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {

late final String text;
CustomTextField ({super.key,required this.text});
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        constraints: const BoxConstraints(
          maxHeight: 53.7,
          minHeight: 53.7,
          maxWidth: 360,
          minWidth: 360,
        ),
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(8.0),
          borderSide: BorderSide.none,
        ),

        labelText: text,
        floatingLabelStyle: const TextStyle(
          height: 4,),
        filled: true,
        fillColor: Colors.grey[200],
      ),


    );
  }
}