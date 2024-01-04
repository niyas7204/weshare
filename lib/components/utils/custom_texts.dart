import 'package:flutter/material.dart';

import 'package:weshare/constants/colors.dart';

class CustomTexts {
  static labelText(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: PreferedColors.baseColor),
      );
  static header1(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w600,
            color: PreferedColors.baseColor),
      );
  static nameText(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: PreferedColors.baseColor),
      );
  static text15(String text) => Text(
        text,
        style: const TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: PreferedColors.baseColor),
      );
}
