import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'app_theme.dart';
import 'services/theme_service.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  final _themeService = ThemeService();

  @override
  Widget build(BuildContext context) {
    return ThemeInheritor(
      themeService: _themeService,
      child: ValueListenableBuilder<bool>(
        valueListenable: _themeService.isDarkMode,
        builder: (context, isDarkMode, child) {
          return MaterialApp(
            title: 'HIIT Addict',
            theme: isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
            home: const HomeScreen(),
          );
        },
      ),
    );
  }
}
