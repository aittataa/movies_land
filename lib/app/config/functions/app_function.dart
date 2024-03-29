import "package:flutter/material.dart";
import "package:flutter/services.dart";
import "package:get/get.dart";
import "package:intl/intl.dart";

import "../themes/app_theme.dart";

class AppFunction {
  AppFunction._();

  static String dateShape(DateTime date) => DateFormat("MMM dd, yyyy - HH:mm").format(date);

  static SnackbarController snackBar({required String title, required String message}) {
    return Get.snackbar(
      "",
      "",
      backgroundColor: Colors.red.shade600,
      margin: const EdgeInsets.only(top: 25, right: 15, left: 15),
      duration: const Duration(milliseconds: 2500),
      titleText: Text(
        title,
        style: const TextStyle(
          color: AppTheme.primaryTextColor,
          fontWeight: FontWeight.w900,
        ),
      ),
      messageText: Text(
        message,
        style: const TextStyle(
          color: AppTheme.primaryTextColor,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }

  static SliverGridDelegateWithFixedCrossAxisCount gridDelegate({int crossAxisCount = 1, double spacing = 10, double childAspectRatio = 1}) {
    return SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: crossAxisCount,
      mainAxisSpacing: spacing,
      crossAxisSpacing: spacing,
      childAspectRatio: childAspectRatio,
    );
  }

  static get configureDependencies {
    //SystemChrome.setPreferredOrientations([DeviceOrientation.portraitUp]);
    //SystemChrome.setEnabledSystemUIMode(SystemUiMode.immersive, overlays: [SystemUiOverlay.top]);
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        systemNavigationBarColor: AppTheme.transparentColor,
        systemNavigationBarDividerColor: AppTheme.transparentColor,
        systemNavigationBarIconBrightness: Brightness.dark,
        systemNavigationBarContrastEnforced: true,
        statusBarColor: AppTheme.transparentColor,
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
        systemStatusBarContrastEnforced: true,
      ),
    );
  }
}
