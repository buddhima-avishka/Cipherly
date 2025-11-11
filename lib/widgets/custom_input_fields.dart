// Packages
import 'package:flutter/material.dart';


class CustomTextFormField extends StatelessWidget {
  final Function(String) onSaved;
  final String regEx;
  final String hintText;
  // final TextInputType keyboardType;
  final bool obscureText;
  // final IconData? icon;

  CustomTextFormField({
    // Key? key,
    required this.onSaved,
    required this.regEx,
    required this.hintText,
    // this.keyboardType = TextInputType.text,
    required this.obscureText,
    // this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onSaved: (_value) => onSaved(_value!),
      cursorColor: Colors.white,
      style: TextStyle(color: Colors.white),
      validator: (_value) {
        return RegExp(regEx).hasMatch(_value!) ? null : 'Enter a valid value.';
      },
      obscureText: obscureText,
      // keyboardType: keyboardType,
      decoration: InputDecoration(
        fillColor: Color.fromRGBO(30, 29, 37, 1.0),
        filled: true,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10.0),
          borderSide: BorderSide.none
        ),
        hintText: hintText,
        hintStyle: TextStyle(color: Colors.white54)
        // prefixIcon: icon != null ? Icon(icon) : null,
      ),
    );
  }
}