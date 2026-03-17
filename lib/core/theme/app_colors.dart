import 'package:flutter/material.dart';

/// 🎨 Damascus Islamic Color Palette
/// Inspired by the Grand Umayyad Mosque of Damascus
abstract class AppColors {
  // ─── Primary: Royal Damascus Green ───────────────────────────────────────
  static const Color primaryGreen = Color(0xFF1B4332);       // Deep royal green
  static const Color primaryGreenLight = Color(0xFF2D6A4F);  // Lighter green
  static const Color primaryGreenDark = Color(0xFF0D2B1F);   // Darkest green

  // ─── Accent: Luxurious Gold ───────────────────────────────────────────────
  static const Color gold = Color(0xFFC8963E);               // Main gold
  static const Color goldLight = Color(0xFFE4B860);          // Bright gold
  static const Color goldDark = Color(0xFF9E6F28);           // Deep gold
  static const Color goldShimmer = Color(0xFFF5D07A);        // Shimmer gold

  // ─── Background: Warm Cream & Parchment ──────────────────────────────────
  static const Color cream = Color(0xFFF5EDD6);              // Main background
  static const Color creamLight = Color(0xFFFDF6E3);         // Lightest cream
  static const Color creamDark = Color(0xFFE8D5A3);          // Darker cream
  static const Color parchment = Color(0xFFECDFBB);          // Parchment tone

  // ─── Dark Mode ────────────────────────────────────────────────────────────
  static const Color darkBg = Color(0xFF0A1A0F);             // Very dark green-black
  static const Color darkSurface = Color(0xFF0F2518);        // Dark surface
  static const Color darkCard = Color(0xFF162E1F);           // Dark card
  static const Color darkBorder = Color(0xFF2D4A37);         // Dark border

  // ─── Text ──────────────────────────────────────────────────────────────────
  static const Color textDark = Color(0xFF1A0E00);           // Very dark brown
  static const Color textMid = Color(0xFF4A3728);            // Mid brown text
  static const Color textLight = Color(0xFFF5EDD6);          // Light (on dark)
  static const Color textGold = Color(0xFFC8963E);           // Gold text

  // ─── Gradients ────────────────────────────────────────────────────────────
  static const LinearGradient goldGradient = LinearGradient(
    colors: [goldDark, goldShimmer, gold, goldDark],
    stops: [0.0, 0.3, 0.7, 1.0],
  );

  static const LinearGradient greenGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [primaryGreenDark, primaryGreen, primaryGreenLight],
  );

  static const LinearGradient appBarGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [primaryGreenDark, primaryGreen],
  );

  static const LinearGradient darkAppBarGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [Color(0xFF050D08), Color(0xFF0A1A0F)],
  );

  static const LinearGradient creamGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [creamLight, cream, parchment],
  );

  // ─── Shadows ──────────────────────────────────────────────────────────────
  static List<BoxShadow> goldShadow = [
    BoxShadow(
      color: gold.withValues(alpha: 0.35),
      blurRadius: 12,
      spreadRadius: 1,
      offset: const Offset(0, 3),
    ),
  ];

  static List<BoxShadow> greenShadow = [
    BoxShadow(
      color: primaryGreen.withValues(alpha: 0.4),
      blurRadius: 16,
      spreadRadius: 2,
      offset: const Offset(0, 4),
    ),
  ];

  static List<BoxShadow> cardShadow = [
    BoxShadow(
      color: Colors.black.withValues(alpha: 0.12),
      blurRadius: 20,
      spreadRadius: 0,
      offset: const Offset(0, 6),
    ),
    BoxShadow(
      color: gold.withValues(alpha: 0.08),
      blurRadius: 40,
      spreadRadius: -4,
      offset: const Offset(0, 10),
    ),
  ];
}
