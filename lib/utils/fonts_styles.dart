import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:read_with_me/utils/constants/enum.dart';

TextStyle small100(Color color, String weight, {String style = "normal"}) {
  return GoogleFonts.quicksand(
      fontSize: 12,
      color: color,
      fontWeight: myFontWeight[weight],
      fontStyle: myFontStyle[style]);
}

TextStyle small200(Color color, String weight, {String style = "normal"}) {
  return GoogleFonts.quicksand(
      fontSize: 14,
      color: color,
      fontWeight: myFontWeight[weight],
      fontStyle: myFontStyle[style]);
}

TextStyle body(Color color, String weight, {String style = "normal"}) {
  return GoogleFonts.quicksand(
      fontSize: 17,
      color: color,
      fontWeight: myFontWeight[weight],
      fontStyle: myFontStyle[style]);
}

TextStyle big100(Color color, String weight, {String style = "normal"}) {
  return GoogleFonts.quicksand(
      fontSize: 20,
      color: color,
      fontWeight: myFontWeight[weight],
      fontStyle: myFontStyle[style]);
}

TextStyle big200(Color color, String weight, {String style = "normal"}) {
  return GoogleFonts.quicksand(
      fontSize: 25,
      color: color,
      fontWeight: myFontWeight[weight],
      fontStyle: myFontStyle[style]);
}

TextStyle big300(Color color, String weight, {String style = "normal"}) {
  return GoogleFonts.quicksand(
      fontSize: 34,
      color: color,
      fontWeight: myFontWeight[weight],
      fontStyle: myFontStyle[style]);
}
