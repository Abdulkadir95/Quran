import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';
import 'app_colors.dart';

/// 🎨 Damascus Islamic ThemeData
class AppTheme {
  AppTheme._();

  // ─── Light Theme ──────────────────────────────────────────────────────────
  static ThemeData get lightTheme {
    return ThemeData(
      useMaterial3: false, // ⚠️ Required by quran_library
      brightness: Brightness.light,
      colorScheme: const ColorScheme(
        brightness: Brightness.light,
        primary: AppColors.primaryGreen,
        onPrimary: AppColors.creamLight,
        primaryContainer: AppColors.primaryGreenLight,
        onPrimaryContainer: AppColors.creamLight,
        secondary: AppColors.gold,
        onSecondary: AppColors.textDark,
        secondaryContainer: AppColors.creamDark,
        onSecondaryContainer: AppColors.textDark,
        surface: AppColors.creamLight,
        onSurface: AppColors.textDark,
        error: Color(0xFFB00020),
        onError: Colors.white,
        outline: AppColors.gold,
        shadow: Color(0x33000000),
        inverseSurface: AppColors.primaryGreen,
        onInverseSurface: AppColors.creamLight,
        inversePrimary: AppColors.goldLight,
        tertiary: AppColors.goldDark,
        onTertiary: AppColors.creamLight,
      ),
      scaffoldBackgroundColor: AppColors.cream,

      // AppBar
      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.primaryGreen,
        foregroundColor: AppColors.creamLight,
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: AppColors.primaryGreenDark,
          statusBarIconBrightness: Brightness.light,
        ),
        titleTextStyle: GoogleFonts.amiri(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.goldShimmer,
        ),
        iconTheme: const IconThemeData(color: AppColors.goldLight),
      ),

      // Card
      cardTheme: CardThemeData(
        color: AppColors.creamLight,
        elevation: 4,
        shadowColor: AppColors.gold.withValues(alpha: 0.2),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: AppColors.gold.withValues(alpha: 0.3), width: 0.8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      ),

      // Elevated Button
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryGreen,
          foregroundColor: AppColors.creamLight,
          elevation: 4,
          shadowColor: AppColors.primaryGreen.withValues(alpha: 0.4),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
          textStyle: GoogleFonts.amiri(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),

      // Text Button
      textButtonTheme: TextButtonThemeData(
        style: TextButton.styleFrom(
          foregroundColor: AppColors.gold,
          textStyle: GoogleFonts.amiri(fontSize: 15, fontWeight: FontWeight.w600),
        ),
      ),

      // Icon
      iconTheme: const IconThemeData(color: AppColors.primaryGreen, size: 24),

      // Input decoration
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.creamLight,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColors.gold.withValues(alpha: 0.4)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColors.gold.withValues(alpha: 0.3)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.gold, width: 1.5),
        ),
        hintStyle: GoogleFonts.amiri(
          color: AppColors.textMid.withValues(alpha: 0.5),
          fontSize: 14,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),

      // Divider
      dividerTheme: DividerThemeData(
        color: AppColors.gold.withValues(alpha: 0.25),
        thickness: 0.8,
        space: 16,
      ),

      // Bottom navigation
      bottomNavigationBarTheme: const BottomNavigationBarThemeData(
        backgroundColor: AppColors.creamLight,
        selectedItemColor: AppColors.primaryGreen,
        unselectedItemColor: AppColors.textMid,
        elevation: 16,
        type: BottomNavigationBarType.fixed,
        showSelectedLabels: true,
        showUnselectedLabels: true,
      ),

      // Chip
      chipTheme: ChipThemeData(
        backgroundColor: AppColors.parchment,
        labelStyle: GoogleFonts.amiri(color: AppColors.textDark, fontSize: 13),
        selectedColor: AppColors.primaryGreen,
        side: BorderSide(color: AppColors.gold.withValues(alpha: 0.3)),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      ),

      // Dialog
      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.creamLight,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: AppColors.gold.withValues(alpha: 0.4)),
        ),
        titleTextStyle: GoogleFonts.amiri(
          color: AppColors.primaryGreen,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        contentTextStyle: GoogleFonts.amiri(color: AppColors.textMid, fontSize: 15),
      ),

      // Tab bar
      tabBarTheme: TabBarThemeData(
        labelColor: AppColors.primaryGreen,
        unselectedLabelColor: AppColors.textMid,
        indicator: UnderlineTabIndicator(
          borderSide: const BorderSide(color: AppColors.gold, width: 2.5),
          borderRadius: BorderRadius.circular(2),
        ),
        labelStyle: GoogleFonts.amiri(fontSize: 14, fontWeight: FontWeight.bold),
        unselectedLabelStyle: GoogleFonts.amiri(fontSize: 14),
      ),

      // Slider
      sliderTheme: SliderThemeData(
        activeTrackColor: AppColors.primaryGreen,
        inactiveTrackColor: AppColors.primaryGreen.withValues(alpha: 0.2),
        thumbColor: AppColors.gold,
        overlayColor: AppColors.gold.withValues(alpha: 0.15),
        trackHeight: 3,
      ),

      // Progress indicator
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: AppColors.primaryGreen,
        linearTrackColor: AppColors.parchment,
      ),

      textTheme: _buildTextTheme(Brightness.light),
      visualDensity: VisualDensity.comfortable,
      fontFamily: GoogleFonts.amiri().fontFamily,
    );
  }

  // ─── Dark Theme ───────────────────────────────────────────────────────────
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: false, // ⚠️ Required by quran_library
      brightness: Brightness.dark,
      colorScheme: ColorScheme(
        brightness: Brightness.dark,
        primary: AppColors.primaryGreenLight,
        onPrimary: AppColors.darkBg,
        primaryContainer: AppColors.primaryGreenDark,
        onPrimaryContainer: AppColors.creamLight,
        secondary: AppColors.gold,
        onSecondary: AppColors.darkBg,
        secondaryContainer: AppColors.darkCard,
        onSecondaryContainer: AppColors.creamLight,
        surface: AppColors.darkSurface,
        onSurface: AppColors.creamLight,
        error: const Color(0xFFCF6679),
        onError: AppColors.darkBg,
        outline: AppColors.gold.withValues(alpha: 0.5),
        shadow: const Color(0x66000000),
        inverseSurface: AppColors.cream,
        onInverseSurface: AppColors.textDark,
        inversePrimary: AppColors.primaryGreen,
        tertiary: AppColors.goldLight,
        onTertiary: AppColors.darkBg,
      ),
      scaffoldBackgroundColor: AppColors.darkBg,

      appBarTheme: AppBarTheme(
        backgroundColor: AppColors.darkSurface,
        foregroundColor: AppColors.creamLight,
        elevation: 0,
        centerTitle: true,
        systemOverlayStyle: const SystemUiOverlayStyle(
          statusBarColor: Color(0xFF050D08),
          statusBarIconBrightness: Brightness.light,
        ),
        titleTextStyle: GoogleFonts.amiri(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          color: AppColors.goldShimmer,
        ),
        iconTheme: const IconThemeData(color: AppColors.goldLight),
      ),

      cardTheme: CardThemeData(
        color: AppColors.darkCard,
        elevation: 4,
        shadowColor: Colors.black54,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: BorderSide(color: AppColors.gold.withValues(alpha: 0.2), width: 0.8),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
      ),

      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: AppColors.primaryGreenLight,
          foregroundColor: AppColors.creamLight,
          elevation: 4,
          shadowColor: AppColors.primaryGreen.withValues(alpha: 0.5),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(50)),
          padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 14),
          textStyle: GoogleFonts.amiri(fontSize: 16, fontWeight: FontWeight.bold),
        ),
      ),

      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: AppColors.darkCard,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColors.gold.withValues(alpha: 0.3)),
        ),
        enabledBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: BorderSide(color: AppColors.gold.withValues(alpha: 0.2)),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(14),
          borderSide: const BorderSide(color: AppColors.gold, width: 1.5),
        ),
        hintStyle: GoogleFonts.amiri(
          color: AppColors.creamLight.withValues(alpha: 0.4),
          fontSize: 14,
        ),
        contentPadding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      ),

      bottomNavigationBarTheme: BottomNavigationBarThemeData(
        backgroundColor: AppColors.darkSurface,
        selectedItemColor: AppColors.goldLight,
        unselectedItemColor: AppColors.creamLight.withValues(alpha: 0.5),
        elevation: 16,
        type: BottomNavigationBarType.fixed,
      ),

      dividerTheme: DividerThemeData(
        color: AppColors.gold.withValues(alpha: 0.15),
        thickness: 0.8,
        space: 16,
      ),

      tabBarTheme: TabBarThemeData(
        labelColor: AppColors.goldLight,
        unselectedLabelColor: AppColors.creamLight.withValues(alpha: 0.5),
        indicator: const UnderlineTabIndicator(
          borderSide: BorderSide(color: AppColors.goldLight, width: 2.5),
        ),
        labelStyle: GoogleFonts.amiri(fontSize: 14, fontWeight: FontWeight.bold),
        unselectedLabelStyle: GoogleFonts.amiri(fontSize: 14),
      ),

      iconTheme: const IconThemeData(color: AppColors.goldLight, size: 24),

      sliderTheme: SliderThemeData(
        activeTrackColor: AppColors.goldLight,
        inactiveTrackColor: AppColors.goldLight.withValues(alpha: 0.2),
        thumbColor: AppColors.gold,
        overlayColor: AppColors.gold.withValues(alpha: 0.15),
        trackHeight: 3,
      ),

      progressIndicatorTheme: ProgressIndicatorThemeData(
        color: AppColors.goldLight,
        linearTrackColor: AppColors.darkCard,
      ),

      dialogTheme: DialogThemeData(
        backgroundColor: AppColors.darkCard,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20),
          side: BorderSide(color: AppColors.gold.withValues(alpha: 0.3)),
        ),
        titleTextStyle: GoogleFonts.amiri(
          color: AppColors.goldLight,
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
        contentTextStyle: GoogleFonts.amiri(
          color: AppColors.creamLight.withValues(alpha: 0.85),
          fontSize: 15,
        ),
      ),

      textTheme: _buildTextTheme(Brightness.dark),
      visualDensity: VisualDensity.comfortable,
      fontFamily: GoogleFonts.amiri().fontFamily,
    );
  }

  // ─── Text Theme ───────────────────────────────────────────────────────────
  static TextTheme _buildTextTheme(Brightness brightness) {
    final bool isDark = brightness == Brightness.dark;
    final Color baseColor = isDark ? AppColors.creamLight : AppColors.textDark;
    final Color subtleColor =
        isDark ? AppColors.creamLight.withValues(alpha: 0.7) : AppColors.textMid;
    final Color headingColor = isDark ? AppColors.goldLight : AppColors.primaryGreen;

    return TextTheme(
      displayLarge: GoogleFonts.amiriQuran(
        fontSize: 32, fontWeight: FontWeight.bold, color: baseColor, height: 2.0),
      displayMedium: GoogleFonts.amiriQuran(
        fontSize: 26, fontWeight: FontWeight.bold, color: baseColor, height: 1.8),
      displaySmall: GoogleFonts.amiriQuran(
        fontSize: 22, fontWeight: FontWeight.bold, color: baseColor, height: 1.8),
      headlineLarge: GoogleFonts.amiri(
        fontSize: 24, fontWeight: FontWeight.bold, color: headingColor),
      headlineMedium: GoogleFonts.amiri(
        fontSize: 20, fontWeight: FontWeight.bold, color: headingColor),
      headlineSmall: GoogleFonts.amiri(
        fontSize: 18, fontWeight: FontWeight.w600, color: headingColor),
      titleLarge: GoogleFonts.amiri(
        fontSize: 18, fontWeight: FontWeight.bold, color: baseColor),
      titleMedium: GoogleFonts.amiri(
        fontSize: 16, fontWeight: FontWeight.w600, color: baseColor),
      titleSmall: GoogleFonts.amiri(
        fontSize: 14, fontWeight: FontWeight.w600, color: subtleColor),
      bodyLarge: GoogleFonts.amiri(
        fontSize: 16, color: baseColor, height: 1.9),
      bodyMedium: GoogleFonts.amiri(
        fontSize: 14, color: subtleColor, height: 1.7),
      bodySmall: GoogleFonts.amiri(
        fontSize: 12, color: subtleColor, height: 1.5),
      labelLarge: GoogleFonts.amiri(
        fontSize: 14, fontWeight: FontWeight.bold, color: headingColor),
      labelMedium: GoogleFonts.amiri(
        fontSize: 12, fontWeight: FontWeight.w600, color: headingColor),
      labelSmall: GoogleFonts.amiri(fontSize: 11, color: subtleColor),
    );
  }
}
