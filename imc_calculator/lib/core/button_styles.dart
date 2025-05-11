import 'package:flutter/material.dart';
import 'package:imc_calculator/core/app_color.dart';

class ButtonStyles {
  static ButtonStyle primaryStyle = ButtonStyle(
    shape: WidgetStateProperty.all(
      RoundedRectangleBorder(borderRadius: BorderRadius.circular(16)),
    ),
    backgroundColor: WidgetStateProperty.all(AppColor.primary),
  );
}
