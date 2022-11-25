import 'package:flutter/material.dart';
import 'package:responsive_sizer/responsive_sizer.dart';

class TextUtils {
  static TextTheme theme(BuildContext context) {
    final TextTheme textTheme = Theme.of(context).textTheme;
    // log('fontsize = ${textTheme.labelMedium?.fontSize}');

    return textTheme.copyWith(
      displayLarge: textTheme.displayLarge?.copyWith(),
      displayMedium: textTheme.displayMedium?.copyWith(),
      displaySmall: textTheme.displaySmall?.copyWith(),
      headlineLarge: textTheme.headlineLarge?.copyWith(fontSize: 26.sp),
      headlineMedium: textTheme.headlineMedium?.copyWith(fontSize: 24.sp),
      headlineSmall: textTheme.headlineSmall?.copyWith(fontSize: 20.sp),
      titleLarge: textTheme.titleLarge?.copyWith(fontSize: 18.sp),
      titleMedium: textTheme.titleMedium?.copyWith(fontSize: 16.sp),
      titleSmall: textTheme.titleSmall?.copyWith(fontSize: 15.sp),
      bodyLarge: textTheme.bodyLarge?.copyWith(fontSize: 16.sp),
      bodyMedium: textTheme.bodyMedium?.copyWith(fontSize: 14.sp),
      bodySmall: textTheme.bodySmall?.copyWith(fontSize: 12.sp),
      labelLarge: textTheme.labelLarge?.copyWith(fontSize: 14.5.sp),
      labelMedium: textTheme.labelMedium?.copyWith(fontSize: 12.sp),
      labelSmall: textTheme.labelSmall?.copyWith(fontSize: 10.sp),
    );
  }
}


  /// displayLarge = displayLarge ?? headline1,
  /// displayMedium = displayMedium ?? headline2,
  /// displaySmall = displaySmall ?? headline3,
  /// headlineMedium = headlineMedium ?? headline4,
  /// headlineSmall = headlineSmall ?? headline5,
  /// titleLarge = titleLarge ?? headline6,
  /// titleMedium = titleMedium ?? subtitle1,
  /// titleSmall = titleSmall ?? subtitle2,
  /// bodyLarge = bodyLarge ?? bodyText1,
  /// bodyMedium = bodyMedium ?? bodyText2,
  /// bodySmall = bodySmall ?? caption,
  /// labelLarge = labelLarge ?? button,
  /// labelSmall = labelSmall ?? overline;

  /// NAME         SIZE  WEIGHT  SPACING
  /// headline1    96.0  light   -1.5
  /// headline2    60.0  light   -0.5
  /// headline3    48.0  regular  0.0
  /// headline4    34.0  regular  0.25
  /// headline5    24.0  regular  0.0
  /// headline6    20.0  medium   0.15
  /// subtitle1    16.0  regular  0.15
  /// subtitle2    14.0  medium   0.1
  /// body1        16.0  regular  0.5   (bodyText1)
  /// body2        14.0  regular  0.25  (bodyText2)
  /// button       14.0  medium   1.25
  /// caption      12.0  regular  0.4
  /// overline     10.0  regular  1.5
