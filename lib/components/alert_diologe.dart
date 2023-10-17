import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:weshare/constants/sizes.dart';

class AlertdiologeWidgets extends GetxController {
  loadingAlert(BuildContext context) {
    AlertDialog loadingDiologe = const AlertDialog(
      content: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CircularProgressIndicator(),
          SpaceSized.space10H,
          Text('loading...')
        ],
      ),
    );
    showDialog(
      barrierDismissible: false,
      context: context,
      builder: (context) => loadingDiologe,
    );
  }

  warnigAlert(String message) {
    Get.defaultDialog(title: 'Note', middleText: message, actions: [
      ElevatedButton(
          onPressed: () {
            Get.back();
          },
          child: const Text('OK'))
    ]);
  }
}
