import 'package:flutter/material.dart';

class TextFormfield extends StatelessWidget {
  //const TextFormfield({Key? key}) : super(key: key);
 // final String hinttext;
  final String label;
  final TextEditingController controller;
  final Function errorstyle;
  final TextInputType keyboardtype;
  // final Function validator;

  TextFormfield({
    //required this.hinttext,
    required this.label,
    required this.controller,
    required this.errorstyle,
    required this.keyboardtype,
    //  this.validator
  });
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: TextInputType.number,
      controller: controller,
      validator: (value) {
        if (value!.isEmpty) {
          return 'this field is required';
        }

        return null;
      },
      decoration: InputDecoration(
        errorStyle: errorstyle(),
        filled: true,
        fillColor: Colors.white,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(15),
        ),
        label: Text(label),
      ),
    );
  }
}
