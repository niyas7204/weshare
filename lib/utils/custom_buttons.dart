import 'package:flutter/material.dart';
import 'package:weshare/utils/custom_texts.dart';

class CustomButton {
  static Widget authButton(String label) {
    return SizedBox(
      width: 160,
      height: 35,
      child:
          ElevatedButton(onPressed: () {}, child: CustomTexts.labelText(label)),
    );
  }
}
