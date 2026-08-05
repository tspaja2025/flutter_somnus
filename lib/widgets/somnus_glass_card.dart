import 'dart:ui';
import 'package:flutter/material.dart';
import 'package:flutter_somnus/theme/somnus_design_tokens.dart';

class SomnusGlassCard extends StatelessWidget {
  final Widget child;
  final EdgeInsetsGeometry? padding;
  final VoidCallback? onTap;

  const SomnusGlassCard({
    super.key,
    required this.child,
    this.padding,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    final tokens = Theme.of(context).extension<SomnusDesignTokens>()!;

    return ClipRRect(
      borderRadius: BorderRadius.circular(24.0),
      child: BackdropFilter(
        filter: ImageFilter.blur(
          sigmaX: tokens.glassBlur,
          sigmaY: tokens.glassBlur,
        ),
        child: GestureDetector(
          onTap: onTap,
          child: Container(
            padding: padding ?? EdgeInsets.all(tokens.md),
            decoration: BoxDecoration(
              gradient: LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [
                  const Color(0xFF1D1F29).withValues(alpha: 0.50),
                  const Color(0xFF11131C).withValues(alpha: 0.30),
                ],
              ),
              borderRadius: BorderRadius.circular(24.0),
              border: Border.all(color: tokens.glassBorderColor, width: 1.0),
            ),
            child: child,
          ),
        ),
      ),
    );
  }
}
