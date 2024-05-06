import 'package:charity_app/core/app_export.dart';
import 'package:flutter/material.dart';

class AppDecoration {
  // Fill decorations
  static BoxDecoration get fillOnPrimaryContainer => BoxDecoration(
        color: theme.colorScheme.onPrimaryContainer,
      );

  static BoxDecoration get fillPrimary => BoxDecoration(
    color: theme.colorScheme.onPrimary,
  );

  static BoxDecoration get fillIndigo => BoxDecoration(
    color: appTheme.indigo70007,
  );

  // Gradient decorations
  static BoxDecoration get gradientWhiteAToOnPrimaryContainer => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(-0.4, 1.39),
          colors: [
            appTheme.whiteA700,
            theme.colorScheme.onPrimaryContainer.withOpacity(0)
          ],
        ),
      );

  static BoxDecoration get gradientIndigoToBlack => BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.94, -0.63),
          end: Alignment(-0.64, 2.75),
          colors: [appTheme.indigo500, appTheme.black900.withOpacity(0)],
        ),
      );

  static BoxDecoration get gradientBlueAToBlueGray => BoxDecoration(
        border: Border.all(
          color: appTheme.blueGray200,
          width: 1.h,
        ),
        gradient: LinearGradient(
          begin: Alignment(0.5, 0),
          end: Alignment(-0.26, 1.49),
          colors: [
            appTheme.blueA10096,
            appTheme.blueGray50049.withOpacity(0.59)
          ],
        ),
      );

  static BoxDecoration get white => BoxDecoration(
    color: theme.colorScheme.onPrimaryContainer,
    border: Border.all(
      color: appTheme.indigo50,
      width: 1.h,
    ),
    boxShadow: [
      BoxShadow(
        color: appTheme.gray9000f,
        spreadRadius: 2.h,
        blurRadius: 2.h,
        offset: const Offset(0, 1),
      ),
    ],
  );
}

class BorderRadiusStyle {
  static BorderRadius get roundedBorder16 => BorderRadius.circular(
    16.h,
  );
  static BorderRadius get roundedBorder6 => BorderRadius.circular(
    6.h,
  );
  static BorderRadius get roundedBorder3 => BorderRadius.circular(
    3.h,
  );
  static BorderRadius get roundedBorder8 => BorderRadius.circular(
    8.h,
  );
}
