import 'package:flutter/material.dart';

extension LogExtension on String {
  void log({String? title}) {
    debugPrint("${title == null ? "" : "$title=======> "} $this");
  }
}
