import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextSimple extends StatelessWidget {
  final String text;

  const TextSimple({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(color: Colors.white),
    );
  }
}
