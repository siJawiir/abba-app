import 'package:flutter/material.dart';

class MyColors {
  MyColors._();

  /// Basic Colors
  static const Color primary = Color(0xFF3498db);
  static const Color secondary = Color(0xFF2ecc71);
  static const Color accent = Color(0xFFe74c3c);

  /// Gradient Colors
  static const Gradient blueLinearGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF3498db),
      Color(0xFF2980b9),
      Color(0xFF2c3e50),
    ],
  );

  /// Text Colors
  static const Color textPrimary = Colors.black;
  static const Color textSecondary = Colors.blueGrey;
  static const Color textWhite = Colors.white;

  /// Background Colors
  static const Color backgroundLight = Color(0xFFecf0f1);
  static const Color backgroundDark = Color(0xFF34495e);
  static const Color backgroundPrimary = Color(0xFF3498db);

  /// Background Container Colors
  static const Color lightContainer = Colors.white;
  static const Color darkContainer = Color(0xFF2c3e50);

  /// Button Colors
  static const Color buttonPrimary = Color(0xFF3498db);
  static const Color buttonSecondary = Color(0xFF2ecc71);
  static const Color buttonDisable = Color(0xFFbdc3c7);

  /// Border Colors
  static const Color borderPrimary = Color(0xFF3498db);
  static const Color borderSecondary = Color(0xFF2ecc71);

  /// Error & Validation Colors
  static const Color error = Color(0xFFe74c3c);
  static const Color success = Color(0xFF2ecc71);
  static const Color warning = Color(0xFFf39c12);
  static const Color info = Color(0xFF3498db);

  /// Neutral Shades
  static const Color dark = Color(0xFF34495e);
  static const Color darker = Color(0xFF2c3e50);
  static const Color lighter = Color(0xffb0b3b4);
  static const Color light = Colors.white;
}
