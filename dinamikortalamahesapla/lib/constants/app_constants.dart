import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class sabitler {
  static const MaterialColor anaRenk = Colors.indigo;
  static const String BaslikText = "Ortalama Hesapla";
  static final TextStyle baslikstyle = GoogleFonts.quicksand(
      fontSize: 24, fontWeight: FontWeight.w900, color: anaRenk);
  static BorderRadius borderRadius = BorderRadius.circular(18);
  static final TextStyle OrtalamaGosterBodyStyle = GoogleFonts.quicksand(
      fontSize: 16, fontWeight: FontWeight.w600, color: anaRenk);
  static final TextStyle OrtalamaStyle = GoogleFonts.quicksand(
      fontSize: 55, fontWeight: FontWeight.w800, color: anaRenk);
  static final EdgeInsets Dropdownpadding =
      EdgeInsets.symmetric(horizontal: 16, vertical: 8);
  static final yatayPadding8 = EdgeInsets.symmetric(horizontal: 8);
}
