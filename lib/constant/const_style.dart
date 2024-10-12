import 'package:app_animals/constant/const_fonts.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class ConstStyle {
  /// [styleAppBar]
  static const TextStyle styleAppBar = TextStyle(
    color: Colors.black,
    backgroundColor: Colors.white,
    fontSize: 30,
    fontWeight: FontWeight.w900,
    fontStyle: FontStyle.italic,
    letterSpacing: 5,
    fontFamily: ConstFonts.kablammo,
  );
  // google fonts
  static TextStyle styleAppBarNew = GoogleFonts.aboreto(color: Colors.black);
}