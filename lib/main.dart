import 'package:flutter/material.dart';
import 'package:flutter_somnus/router/router.dart';
import 'package:flutter_somnus/theme/somnus_theme.dart';

void main() {
  runApp(const SomnusApp());
}

class SomnusApp extends StatelessWidget {
  const SomnusApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Somnus',
      theme: SomnusTheme.darkTheme,
      themeMode: ThemeMode.dark,
      routerConfig: router,
    );
  }
}
