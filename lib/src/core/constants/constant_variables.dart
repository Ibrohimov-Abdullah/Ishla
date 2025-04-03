import 'package:flutter/cupertino.dart';

import '../style/app_text_styles.dart';

AppTextStyle style = const AppTextStyle();

extension CustomColorOpacity on Color {
  Color customOpacity(double opacity) {
    return withAlpha((opacity * 255).toInt());
  }
}
