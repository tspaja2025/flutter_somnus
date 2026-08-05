import 'package:flutter/material.dart';
import 'package:flutter_somnus/theme/somnus_design_tokens.dart';

class SomnusTheme {
  // --- Color Palette Definitions ---
  static const Color surface = Color(0xFF11131C);
  static const Color surfaceDim = Color(0xFF11131C);
  static const Color surfaceBright = Color(0xFF373943);
  static const Color surfaceContainerLowest = Color(0xFF0C0E17);
  static const Color surfaceContainerLow = Color(0xFF191B24);
  static const Color surfaceContainer = Color(0xFF1D1F29);
  static const Color surfaceContainerHigh = Color(0xFF282933);
  static const Color surfaceContainerHighest = Color(0xFF32343E);

  static const Color onSurface = Color(0xFFE1E1EF);
  static const Color onSurfaceVariant = Color(0xFFC9C4D2);
  static const Color outline = Color(0xFF928F9C);
  static const Color outlineVariant = Color(0xFF484551);

  static const Color primary = Color(0xFFC8BFFF);
  static const Color onPrimary = Color(0xFF2F2273);
  static const Color primaryContainer = Color(0xFF9D92E8);
  static const Color onPrimaryContainer = Color(0xFF332777);

  static const Color secondary = Color(0xFFB9C3FF);
  static const Color onSecondary = Color(0xFF00228B);
  static const Color secondaryContainer = Color(0xFF1D3AAC);
  static const Color onSecondaryContainer = Color(0xFFA2B1FF);

  static const Color tertiary = Color(0xFFDCC588);
  static const Color onTertiary = Color(0xFF3D2F01);
  static const Color tertiaryContainer = Color(0xFFB09B62);
  static const Color onTertiaryContainer = Color(0xFF413303);

  static const Color error = Color(0xFFFFB4AB);
  static const Color onError = Color(0xFF690005);

  // --- Typography Scale (Noto Sans) ---
  static const String fontFamily = 'NotoSans';

  static const TextTheme textTheme = TextTheme(
    displayLarge: TextStyle(
      fontFamily: fontFamily,
      fontSize: 32,
      fontWeight: FontWeight.w700,
      height: 40 / 32,
      letterSpacing: -0.64,
      color: onSurface,
    ),
    displayMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 28,
      fontWeight: FontWeight.w700,
      height: 36 / 28,
      letterSpacing: -0.56,
      color: onSurface,
    ),
    headlineMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 24,
      fontWeight: FontWeight.w600,
      height: 32 / 24,
      color: onSurface,
    ),
    bodyLarge: TextStyle(
      fontFamily: fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w400,
      height: 28 / 18,
      color: onSurface,
    ),
    bodyMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 24 / 16,
      color: onSurfaceVariant,
    ),
    labelMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 14,
      fontWeight: FontWeight.w500,
      height: 20 / 14,
      letterSpacing: 0.14,
      color: onSurface,
    ),
    labelSmall: TextStyle(
      fontFamily: fontFamily,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      height: 16 / 12,
      letterSpacing: 0.60,
      color: onSurfaceVariant,
    ),
    titleMedium: TextStyle(
      fontFamily: fontFamily,
      fontSize: 18,
      fontWeight: FontWeight.w600,
      height: 28 / 18,
      color: onSurface,
    ),
  );

  // --- ThemeData ---
  static ThemeData get darkTheme {
    return ThemeData(
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: surface,
      colorScheme: const ColorScheme(
        brightness: Brightness.dark,
        primary: primary,
        onPrimary: onPrimary,
        primaryContainer: primaryContainer,
        onPrimaryContainer: onPrimaryContainer,
        secondary: secondary,
        onSecondary: onSecondary,
        secondaryContainer: secondaryContainer,
        onSecondaryContainer: onSecondaryContainer,
        tertiary: tertiary,
        onTertiary: onTertiary,
        tertiaryContainer: tertiaryContainer,
        onTertiaryContainer: onTertiaryContainer,
        error: error,
        onError: onError,
        surface: surface,
        onSurface: onSurface,
        onSurfaceVariant: onSurfaceVariant,
        outline: outline,
        outlineVariant: outlineVariant,
      ),
      textTheme: textTheme,

      // Extensions
      extensions: const <ThemeExtension<dynamic>>[SomnusDesignTokens()],

      // Card / Container Theme
      cardTheme: CardThemeData(
        color: surfaceContainer.withValues(alpha: 0.40),
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(24.0),
          side: const BorderSide(color: Color(0x1AffFFFF), width: 1.0),
        ),
        margin: EdgeInsets.zero,
      ),

      // Button Themes
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: primary,
          foregroundColor: onPrimary,
          minimumSize: const Size.fromHeight(56.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          textStyle: textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
          elevation: 0,
          shadowColor: primary.withValues(alpha: 0.25),
        ),
      ),

      outlinedButtonTheme: OutlinedButtonThemeData(
        style: OutlinedButton.styleFrom(
          foregroundColor: onSurface,
          minimumSize: const Size.fromHeight(56.0),
          side: const BorderSide(color: outlineVariant, width: 1.0),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(16.0),
          ),
          textStyle: textTheme.labelMedium?.copyWith(
            fontWeight: FontWeight.w600,
          ),
        ),
      ),

      // Input Decoration Theme
      inputDecorationTheme: InputDecorationTheme(
        filled: true,
        fillColor: surfaceContainerLow.withValues(alpha: 0.50),
        contentPadding: const EdgeInsets.symmetric(
          horizontal: 16.0,
          vertical: 16.0,
        ),
        labelStyle: textTheme.labelSmall,
        floatingLabelBehavior: FloatingLabelBehavior.always,
        border: UnderlineInputBorder(
          borderSide: const BorderSide(color: outlineVariant),
          borderRadius: BorderRadius.circular(8.0),
        ),
        enabledBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: outlineVariant),
          borderRadius: BorderRadius.circular(8.0),
        ),
        focusedBorder: UnderlineInputBorder(
          borderSide: const BorderSide(color: primary, width: 2.0),
          borderRadius: BorderRadius.circular(8.0),
        ),
      ),

      // Progress Indicators
      progressIndicatorTheme: const ProgressIndicatorThemeData(
        color: secondary,
        circularTrackColor: Color(0x1AB9C3FF),
        linearTrackColor: Color(0x1AB9C3FF),
      ),
    );
  }
}
