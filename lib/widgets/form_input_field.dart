import 'package:flutter/material.dart';

class FormInputField extends StatelessWidget {
  FormInputField(
      {
        this.controller,
      required this.labelText,
     // required this.validator,
      this.keyboardType = TextInputType.text,
      this.obscureText = false,
      this.minLines = 1,
     // required this.onChanged,
     // required this.onSaved
     this.icon,
      }
      );

  final TextEditingController? controller;
  final String labelText;
  //final String? Function(String?)? validator;
  final TextInputType keyboardType;
  final bool obscureText;
  final int minLines;
  final Icon?icon;
  //final void Function(String)? onChanged;
  //final void Function(String?)? onSaved;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        icon: icon,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.all(
          Radius.circular(15.0),
        )),
        enabledBorder: OutlineInputBorder(
          borderSide: BorderSide(color: Colors.black45, width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
        focusedBorder: OutlineInputBorder(
          borderSide: BorderSide(
              color: /*Palette.focusedinputBorderColor*/ Colors.black45,
              width: 1.0),
          borderRadius: BorderRadius.all(Radius.circular(8.0)),
        ),
       // filled: true,
        fillColor: Colors.black45, //Palette.inputFillColor,
        labelText: labelText,
      ),
      controller: controller,
     // onSaved: onSaved,
     // onChanged: onChanged,
      keyboardType: keyboardType,
      obscureText: obscureText,
     // maxLines: null,
      //minLines: minLines,
      
      //validator: validator,
    );
  }
}
