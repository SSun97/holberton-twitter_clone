import 'package:flutter/material.dart';

class CustomEntryField extends StatelessWidget {
  // Define property types
  final String hint;
  final TextEditingController controller;
  final bool isPassword;

  const CustomEntryField(
      {Key? key,
      required this.hint,
      required this.controller,
      required this.isPassword})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(20),
      child: Center(
        child: TextField(
          controller: controller,
          obscureText: isPassword,
          decoration: InputDecoration(
            hintText: hint,
            filled: true,
            fillColor: Colors.grey[200],
            hintStyle: TextStyle(
                color: Theme.of(context).primaryColorLight, fontSize: 20),
            contentPadding: const EdgeInsets.fromLTRB(30, 15, 0, 15),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide: BorderSide(color: (Colors.grey[200])!),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.circular(30),
              borderSide:
                  BorderSide(color: Theme.of(context).primaryColor, width: 2),
            ),
          ),
        ),
      ),
    );
  }
}