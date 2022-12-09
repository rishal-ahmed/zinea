import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:zinea/core/constants/colors.dart';

class AppTheme {
//==================== App Theme ====================
  static ThemeData theme(BuildContext context) {
    return ThemeData(
      brightness: Brightness.dark,
      scaffoldBackgroundColor: kBlack,
      appBarTheme: const AppBarTheme(
        color: kTransparentColor,
        systemOverlayStyle:
            SystemUiOverlayStyle(statusBarColor: kTransparentColor),
      ),
      primaryColor: primaryColor,
      primaryColorDark: primaryColor,
      primarySwatch: Colors.yellow,
      // fontFamily: GoogleFonts.aBeeZee().fontFamily,
    );
  }
}
