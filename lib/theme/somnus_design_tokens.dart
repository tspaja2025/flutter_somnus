import 'dart:ui';
import 'package:flutter/material.dart';

@immutable
class SomnusDesignTokens extends ThemeExtension<SomnusDesignTokens> {
  // Spacing Scale
  final double base;
  final double xs;
  final double sm;
  final double md;
  final double lg;
  final double xl;
  final double gutter;
  final double marginMobile;
  final double marginDesktop;

  // Glassmorphism & Surface Attributes
  final double glassBlur;
  final Color glassBorderColor;
  final Color primaryGlowColor;

  const SomnusDesignTokens({
    this.base = 8.0,
    this.xs = 4.0,
    this.sm = 12.0,
    this.md = 24.0,
    this.lg = 40.0,
    this.xl = 64.0,
    this.gutter = 16.0,
    this.marginMobile = 20.0,
    this.marginDesktop = 120.0,
    this.glassBlur = 20.0,
    this.glassBorderColor = const Color(0x1AffFFFF),
    this.primaryGlowColor = const Color(0x40C8BFFF),
  });

  @override
  SomnusDesignTokens copyWith({
    double? base,
    double? xs,
    double? sm,
    double? md,
    double? lg,
    double? xl,
    double? gutter,
    double? marginMobile,
    double? marginDesktop,
    double? glassBlur,
    Color? glassBorderColor,
    Color? primaryGlowColor,
  }) {
    return SomnusDesignTokens(
      base: base ?? this.base,
      xs: xs ?? this.xs,
      sm: sm ?? this.sm,
      md: md ?? this.md,
      lg: lg ?? this.lg,
      xl: xl ?? this.xl,
      gutter: gutter ?? this.gutter,
      marginMobile: marginMobile ?? this.marginMobile,
      marginDesktop: marginDesktop ?? this.marginDesktop,
      glassBlur: glassBlur ?? this.glassBlur,
      glassBorderColor: glassBorderColor ?? this.glassBorderColor,
      primaryGlowColor: primaryGlowColor ?? this.primaryGlowColor,
    );
  }

  @override
  SomnusDesignTokens lerp(ThemeExtension<SomnusDesignTokens>? other, double t) {
    if (other is! SomnusDesignTokens) return this;
    return SomnusDesignTokens(
      base: lerpDouble(base, other.base, t)!,
      xs: lerpDouble(xs, other.xs, t)!,
      sm: lerpDouble(sm, other.sm, t)!,
      md: lerpDouble(md, other.md, t)!,
      lg: lerpDouble(lg, other.lg, t)!,
      xl: lerpDouble(xl, other.xl, t)!,
      gutter: lerpDouble(gutter, other.gutter, t)!,
      marginMobile: lerpDouble(marginMobile, other.marginMobile, t)!,
      marginDesktop: lerpDouble(marginDesktop, other.marginDesktop, t)!,
      glassBlur: lerpDouble(glassBlur, other.glassBlur, t)!,
      glassBorderColor: Color.lerp(
        glassBorderColor,
        other.glassBorderColor,
        t,
      )!,
      primaryGlowColor: Color.lerp(
        primaryGlowColor,
        other.primaryGlowColor,
        t,
      )!,
    );
  }
}
