import 'package:flutter/material.dart';

class TextFormfield extends StatelessWidget {
  //const TextFormfield({Key? key}) : super(key: key);
 // final String hinttext;
  final String label;
  final TextEditingController controller;
  final Function errorstyle;
  final TextInputType keyboardtype;

  const TextFormfield({Key? key, 
    required this.label,
    required this.controller,
    required this.errorstyle,
    required this.keyboardtype,
     }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      keyboardType: keyboardtype,
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
