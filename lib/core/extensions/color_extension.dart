import 'package:flutter/material.dart';

extension ColorExtension on BuildContext {
  bool get isDarkMode => Theme.of(this).brightness == Brightness.dark;
  bool get isLightMode => Theme.of(this).brightness == Brightness.light;
  Color? get primary => Theme.of(this).colorScheme.primary;
  Color? get secondary => Theme.of(this).colorScheme.secondary;
  Color? get surface => Theme.of(this).colorScheme.surface;
  Color? get background => Theme.of(this).colorScheme.background;
  Color? get error => Theme.of(this).colorScheme.error;
  Color? get textColor => Theme.of(this).textTheme.bodyMedium?.color;
  Color? get success => Colors.greenAccent;
}
