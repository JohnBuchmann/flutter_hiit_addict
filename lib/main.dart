import 'package:flutter/material.dart';
import 'screens/home_screen.dart';
import 'app_theme.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool _isDarkMode = true;

  void toggleTheme() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'My App',
      theme: _isDarkMode ? AppTheme.darkTheme : AppTheme.lightTheme,
      home: HomeScreen(toggleTheme: toggleTheme, isDarkMode: _isDarkMode),
    );
  }
}
