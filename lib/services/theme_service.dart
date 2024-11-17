import 'package:flutter/material.dart';

class ThemeService {
  final ValueNotifier<bool> isDarkMode = ValueNotifier(true);

  void toggleTheme() {
    isDarkMode.value = !isDarkMode.value;
  }
}

class ThemeInheritor extends InheritedWidget {
  final ThemeService themeService;

  const ThemeInheritor({
    super.key,
    required this.themeService,
    required super.child,
  });

  static ThemeService of(BuildContext context) {
    return context
        .dependOnInheritedWidgetOfExactType<ThemeInheritor>()!
        .themeService;
  }

  @override
  bool updateShouldNotify(ThemeInheritor oldWidget) {
    return themeService != oldWidget.themeService;
  }
}
