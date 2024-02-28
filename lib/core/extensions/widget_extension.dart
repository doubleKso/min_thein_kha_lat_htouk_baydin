import 'package:flutter/material.dart';

extension GapExtension on int {
  Widget gap() {
    return SizedBox(
      width: toDouble(),
      height: toDouble(),
    );
  }
}
