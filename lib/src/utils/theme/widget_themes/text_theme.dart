import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class MyTextTheme {
  static TextTheme lightTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(color: Colors.black87,fontWeight: FontWeight.bold),
    titleSmall: GoogleFonts.poppins(color: Colors.deepPurple, fontSize: 24),
  );
  static TextTheme darkTextTheme = TextTheme(
    displayMedium: GoogleFonts.montserrat(color: Colors.white70, fontWeight: FontWeight.bold),
    titleSmall: GoogleFonts.poppins(color: Colors.white60, fontSize: 24),
  );
}