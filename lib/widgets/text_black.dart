import 'package:flutter/cupertino.dart';
import 'package:google_fonts/google_fonts.dart';

class TextBlack extends StatelessWidget {
  final String text;
  final double size;

  const TextBlack({super.key, required this.text, required this.size});

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: GoogleFonts.inter(
        fontWeight: FontWeight.w900,
        fontSize: size,
      ),
    );
  }
}
