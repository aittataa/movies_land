import "package:firebase_core/firebase_core.dart";
import "package:flutter/foundation.dart";
import "package:flutter/material.dart";
// import 'package:flutter_web_plugins/flutter_web_plugins.dart';
import "package:get/get.dart";

import "app/config/constants/app_constant.dart";
import "app/config/functions/app_function.dart";
import "app/config/messages/app_message.dart";
import "app/config/themes/app_theme.dart";
import "app/modules/admin/views/admin_view.dart";
import "app/modules/admin/widgets/splash.dart";
import "app/modules/splash/views/splash_view.dart";

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  AppFunction.configureDependencies;
  await Firebase.initializeApp(options: AppConstant.options);
  // if (kIsWeb) setUrlStrategy(PathUrlStrategy());
  runApp(const MoviesLand());
}

class MoviesLand extends StatelessWidget {
  const MoviesLand({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: AppMessage.appTitle,
      theme: AppTheme.light,
      home: Builder(builder: (BuildContext context) {
        if (kIsWeb) {
          return const AdminView();
          return Splash();
        }
        return SplashView();
      }),
    );
  }
}
