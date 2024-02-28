import 'package:flutter/widgets.dart';

extension MediaQueryExtension on BuildContext {
  double dw({double percent = 1}) => MediaQuery.of(this).size.width * percent;
  double dh({double percent = 1}) => MediaQuery.of(this).size.height * percent;
}
