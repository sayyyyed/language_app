import 'package:flutter/material.dart';

TextStyle headingSec({
  double fontSize = 25,
  Color color = Colors.white,
  // String fontFamily = 'Helvetica Neue',
}) {
  return TextStyle(
    fontSize: fontSize,
    color: color, // Pass the color parameter to TextStyle
    // fontFamily: fontFamily,
  );
}

TextStyle headingFirst({
  double fontSize = 60,
  FontWeight fontWeight = FontWeight.bold,
  Color color = Colors.white,
  String fontFamily = 'Helvetica Rounded',
}) {
  return TextStyle(
    fontSize: fontSize,
    color: color, // Pass the color parameter to TextStyle
    fontWeight: fontWeight,
    fontFamily: fontFamily,
  );
}
