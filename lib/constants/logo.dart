import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:weshare/constants/colors.dart';

class AppLogo {
  static Widget baseLogo = Column(
    children: [
      Text(
        'weShare',
        style: GoogleFonts.inika(
            fontSize: 35,
            fontWeight: FontWeight.bold,
            color: PreferedColors.baseColor),
      ),
      const Text(
        'be a friend',
        style: TextStyle(fontSize: 20, color: PreferedColors.baseColor),
      )
    ],
  );
}
