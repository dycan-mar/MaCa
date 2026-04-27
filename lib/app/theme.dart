import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart'; // ← tambah ini

class AppTheme {
  // Warna utama
  static const Color primary = Color(0xFF5C3D11);
  static const Color secondary = Color(0xFFD4A017);
  static const Color background = Color(0xFFFDF6E3);
  static const Color surface = Color(0xFFFFFFFF);
  static const Color textDark = Color(0xFF2C1810);
  static const Color textMuted = Color(0xFF8B6914);
  static const Color accent = Color(0xFF8B0000);

  // ← tambah ini: style khusus untuk teks aksara Jawa
  static TextStyle aksaraStyle({double fontSize = 48, Color? color}) {
    return GoogleFonts.notoSansJavanese(fontSize: fontSize, color: color ?? textDark);
  }

  static ThemeData get theme => ThemeData(
    useMaterial3: true,
    scaffoldBackgroundColor: background,
    colorScheme: ColorScheme.light(
      primary: primary,
      secondary: secondary,
      surface: background,
    ),
    appBarTheme: const AppBarTheme(
      backgroundColor: primary,
      foregroundColor: Colors.white,
      centerTitle: true,
      elevation: 2,
    ),
    cardTheme: CardThemeData(
      color: surface,
      elevation: 3,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: BorderSide(color: secondary, width: 1.5),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: primary,
        foregroundColor: Colors.white,
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 14),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
      ),
    ),
  );
}
