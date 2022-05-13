import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomFlatButton extends StatelessWidget {
  final String label;
  final VoidCallback onPressed;

  const CustomFlatButton(
      {Key? key, required this.label, required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: double.infinity,
        margin: const EdgeInsets.fromLTRB(20, 40, 20, 50),
        child: FloatingActionButton.extended(
          onPressed: onPressed,
          label: Text(
            label,
            style: Theme.of(context).textTheme.button!.copyWith(
                color: Colors.white,
                fontFamily: GoogleFonts.mulish().fontFamily),
          ),
          elevation: 0,
          backgroundColor: Theme.of(context).primaryColor,
        ));
  }
}