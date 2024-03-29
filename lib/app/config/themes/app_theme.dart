import "package:flutter/material.dart";

class AppTheme {
  AppTheme._();

  /// TODO : Others Colors
  static const Color borderColor = Color(0xffD1B7D7);
  static const Color transparentColor = Color(0x00000000);
  static const Color shadowColor = Color(0xFF000000);

  /// TODO : Survey Color
  static const Color redColor = Color(0xfffd0000);
  static const Color blueColor = Color(0xff1492E6);
  static const Color greenColor = Color(0xff08ff00);
  static const Color yellowColor = Color(0xfff3a112);
  static const Color greyColor = Color(0xffA1A1A1);

  /// TODO : Main Colors
  static const Color mainColor = Color(0xffa7208c);
  // static const Color mainColor_2 = const Color(0xffbb009e);

  /// TODO : Back Colors
  static const Color backColor = Color(0xFFF0F0F0);
  static const Color hoverColor = Color(0xFF9A9A9A);
  static const Color primaryBackColor = Color(0xFFFFFFFF);
  static const Color secondaryBackColor = Color(0xFF404040);
  //static const Color secondaryBackColor = const Color(0xFF000000);

  /// TODO : Text Colors
  static const Color textColor = Color(0xFFA0A0A0);
  static const Color primaryTextColor = Color(0xFFFFFFFF);
  static const Color secondaryTextColor = Color(0xFF000000);

  /// TODO : Icon Colors
  static const Color iconColor = Color(0xFFA0A0A0);
  static const Color primaryIconColor = Color(0xFFFFFFFF);
  static const Color secondaryIconColor = Color(0xFF000000);

  static ThemeData get light {
    return ThemeData(
      scaffoldBackgroundColor: backColor,
      primaryColor: transparentColor,
      splashColor: transparentColor,
      appBarTheme: const AppBarTheme(
        elevation: 1,
        centerTitle: true,
        color: transparentColor,
        titleTextStyle: TextStyle(
          color: primaryTextColor,
          fontWeight: FontWeight.w900,
          fontSize: 20,
        ),
        iconTheme: IconThemeData(
          color: primaryIconColor,
          opacity: .75,
        ),
        actionsIconTheme: IconThemeData(
          color: primaryIconColor,
          opacity: .75,
        ),
      ),
    );
  }
}
