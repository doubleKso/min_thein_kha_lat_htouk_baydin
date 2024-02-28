import 'package:flutter/material.dart';

extension FontExtension on BuildContext {
  TextStyle? get getBodyMedium => Theme.of(this).textTheme.bodyMedium;
  TextStyle? get getBodyLarge => Theme.of(this).textTheme.bodyLarge;

  TextStyle? get getTitleLarge => Theme.of(this).textTheme.titleLarge;
  TextStyle? get getTitleMedium => Theme.of(this).textTheme.titleLarge;
}
