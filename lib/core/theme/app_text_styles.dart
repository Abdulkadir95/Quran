import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// 📝 Damascus Islamic Typography System
abstract class AppTextStyles {
  // ─── Title / Header Fonts (Arabic Naskh style via Google Fonts) ───────────

  /// Used for Surah names and big headers
  static TextStyle surahTitle({
    Color color = AppColors.textDark,
    double fontSize = 22,
  }) =>
      GoogleFonts.amiriQuran(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: color,
        height: 1.8,
      );

  /// Used for Juz / Hizb labels
  static TextStyle juzLabel({
    Color color = AppColors.gold,
    double fontSize = 13,
  }) =>
      GoogleFonts.amiri(
        fontSize: fontSize,
        fontWeight: FontWeight.w700,
        color: color,
        letterSpacing: 0.5,
      );

  /// App name / branding
  static TextStyle appTitle({
    Color color = AppColors.goldShimmer,
    double fontSize = 24,
  }) =>
      GoogleFonts.amiri(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: color,
        height: 1.4,
      );

  /// Navigation labels
  static TextStyle navLabel({
    Color color = AppColors.textDark,
    double fontSize = 12,
  }) =>
      GoogleFonts.amiri(
        fontSize: fontSize,
        fontWeight: FontWeight.w600,
        color: color,
      );

  /// Body text / tafsir text
  static TextStyle body({
    Color color = AppColors.textMid,
    double fontSize = 15,
  }) =>
      GoogleFonts.amiri(
        fontSize: fontSize,
        fontWeight: FontWeight.normal,
        color: color,
        height: 1.9,
      );

  /// Used for ayah number badges
  static TextStyle ayahNumber({
    Color color = AppColors.primaryGreen,
    double fontSize = 11,
  }) =>
      GoogleFonts.amiri(
        fontSize: fontSize,
        fontWeight: FontWeight.bold,
        color: color,
      );

  /// Search / input fields
  static TextStyle inputHint({
    Color color = AppColors.textMid,
    double fontSize = 14,
  }) =>
      GoogleFonts.amiri(
        fontSize: fontSize,
        color: color.withValues(alpha: 0.6),
      );

  /// Card subtitle
  static TextStyle cardSubtitle({
    Color color = AppColors.textMid,
    double fontSize = 13,
  }) =>
      GoogleFonts.amiri(
        fontSize: fontSize,
        color: color,
        height: 1.5,
      );

  // ─── Dark mode variants ────────────────────────────────────────────────────

  static TextStyle surahTitleDark({double fontSize = 22}) =>
      surahTitle(color: AppColors.goldShimmer, fontSize: fontSize);

  static TextStyle bodyDark({double fontSize = 15}) =>
      body(color: AppColors.creamLight.withValues(alpha: 0.85), fontSize: fontSize);

  static TextStyle appTitleDark({double fontSize = 24}) =>
      appTitle(color: AppColors.goldShimmer, fontSize: fontSize);
}
