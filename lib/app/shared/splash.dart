import 'package:animated_splash_screen/animated_splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:food_delivery/app/modules/home/views/home_view.dart';
import 'package:page_transition/page_transition.dart';

import '../config/constants/app_constant.dart';
import '../config/themes/app_theme.dart';
import '../shared/bounce_point.dart';

class Splash extends StatelessWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AnimatedSplashScreen(
      splash: const Expanded(child: BouncePoint(size: 60)),
      nextScreen: HomeView(),
      curve: AppConstant.curve,
      backgroundColor: AppTheme.primaryBackColor,
      splashTransition: SplashTransition.slideTransition,
      pageTransitionType: PageTransitionType.rightToLeftWithFade,
      animationDuration: AppConstant.durationSplash,
      splashIconSize: double.infinity,
    );
  }
}
