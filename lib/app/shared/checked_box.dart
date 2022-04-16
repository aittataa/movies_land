import 'package:flutter/cupertino.dart';

import '../config/constants/app_constant.dart';
import '../config/themes/app_theme.dart';

class CheckedBox extends StatelessWidget {
  final double size;
  final bool state;
  final Function()? onTap;
  const CheckedBox({
    Key? key,
    this.size = 50,
    this.state = true,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: AnimatedContainer(
        alignment: Alignment.center,
        duration: AppConstant.durationCheck,
        curve: AppConstant.curve,
        width: size,
        height: size,
        decoration: BoxDecoration(
          color: state ? AppTheme.mainColor : AppTheme.transparentColor,
          borderRadius: BorderRadius.circular(7.5),
          border: Border.all(width: 2, color: AppTheme.mainColor),
        ),
        child: Icon(
          CupertinoIcons.checkmark_alt,
          color: state ? AppTheme.primaryIconColor : AppTheme.transparentColor,
          size: size * .75,
        ),
      ),
    );
  }
}
