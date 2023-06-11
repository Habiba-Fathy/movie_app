import 'package:flutter/material.dart';

class MovieTheme {
  static getLightTheme(String langCode) {
    return ThemeData(
      scaffoldBackgroundColor: Colors.white,
      dividerColor: const Color(0xFFD9D9D9),
      brightness: Brightness.light,
      shadowColor: Colors.black,
      primaryColor: const Color(0xFFE4897B),
      colorScheme: const ColorScheme.light(
        primary: Color(0xFFFF725E),
        secondary: Color(0xFF806815),
      ),
      fontFamily: getFontFamily(langCode),
      textTheme: TextTheme(
        headlineLarge: TextStyle(
          color: const Color(0xFF000000),
          height: getDefaultFontHeight(langCode),
        ),
        headlineMedium: TextStyle(
          color: const Color(0xFFFFFFFF),
          height: getDefaultFontHeight(langCode),
        ),
        headlineSmall: TextStyle(
          color: const Color(0xFFFF725E),
          height: getDefaultFontHeight(langCode),
        ),
        displayLarge: TextStyle(
          color: const Color(0xFF978F72),
          height: getDefaultFontHeight(langCode),
        ),
        displayMedium: TextStyle(
          color: const Color(0xFFFFC8C8),
          height: getDefaultFontHeight(langCode),
        ),
        displaySmall: TextStyle(
          color: const Color(0xFF806815),
          height: getDefaultFontHeight(langCode),
        ),
      ),
      appBarTheme: const AppBarTheme(
        color: Colors.white,
        elevation: 0,
      ),
      inputDecorationTheme: const InputDecorationTheme(
        contentPadding: EdgeInsets.symmetric(horizontal: 14, vertical: 8),
        hintStyle: TextStyle(
          fontSize: 14,
          fontWeight: FontWeight.w400,
          color: Color(0xFFBFBFBF),
        ),
        border: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFE8E8E8),
          ),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: BorderSide(
            color: Color(0xFFE8E8E8),
          ),
        ),
      ),
    );
  }

  static String getFontFamily(String langCode) {
    return langCode == 'en' ? 'Poly' : 'DIN';
  }

  static List<String> getFontFamilyFallBack() {
    return ['Poly', 'DIN'];
  }

  static double? getDefaultFontHeight(String langCode) {
    return langCode == 'en' ? 1 : 1;
  }
}
