import 'package:charity_app/core/app_export.dart';
import 'package:flutter/material.dart';

extension on TextStyle {
  TextStyle get josefinSans {
    return copyWith(
      fontFamily: 'Josefin Sans',
    );
  }

  TextStyle get jost {
    return copyWith(
      fontFamily: 'Jost',
    );
  }

  TextStyle get roboto {
    return copyWith(
      fontFamily: 'Roboto',
    );
  }
}

class CustomTextStyles {
  // Body text style
  static get bodyLargeJostBlueGray700 =>
      theme.textTheme.bodyLarge!.jost.copyWith(
        color: appTheme.blueGray700,
        fontSize: 17.fSize,
      );

// Label text style
  static get labelLargeJosefinSansBlueGray700 =>
      theme.textTheme.labelLarge!.josefinSans.copyWith(
        color: appTheme.blueGray700,
        fontSize: 13.fSize,
      );

  static get labelLargeJosefinSansBlueGray70013 =>
      theme.textTheme.labelLarge!.josefinSans.copyWith(
        color: appTheme.blueGray700,
        fontSize: 13.fSize,
      );

  static get labelLargeJosefinSansBlueGray700Bold =>
      theme.textTheme.labelLarge!.josefinSans.copyWith(
        color: appTheme.blueGray700,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );

  static get labelLargeJosefinSansErrorContainer =>
      theme.textTheme.labelLarge!.josefinSans.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 13.fSize,
      );

  static get labelLargeJosefinSansErrorContainerBold =>
      theme.textTheme.labelLarge!.josefinSans.copyWith(
        color: theme.colorScheme.errorContainer,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );

  static get labelLargeJosefinSansGray50004 =>
      theme.textTheme.labelLarge!.josefinSans.copyWith(
        color: appTheme.gray50004,
        fontSize: 13.fSize,
      );

  static get labelLargeJosefinSansGray50004Bold =>
      theme.textTheme.labelLarge!.josefinSans.copyWith(
        color: appTheme.gray50004,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );

  static get labelLargeJosefinSansOnPrimary =>
      theme.textTheme.labelLarge!.josefinSans.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
      );

  static get labelLargeJosefinSansOnPrimaryBold =>
      theme.textTheme.labelLarge!.josefinSans.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w700,
      );

  static get labelLargeJosefinSansOnPrimarySemiBold =>
      theme.textTheme.labelLarge!.josefinSans.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 13.fSize,
        fontWeight: FontWeight.w600,
      );

  static get labelMediumOnPrimaryContainer =>
      theme.textTheme.labelLarge!.josefinSans.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
      );

  // Title text style
  static get titleLarge20 => theme.textTheme.titleLarge!.copyWith(
        fontSize: 20.fSize,
      );

  static get titleLargeBold => theme.textTheme.titleLarge!.copyWith(
        fontWeight: FontWeight.w700,
      );

  static get titleMediumJost17 => theme.textTheme.titleMedium!.jost.copyWith(
        fontSize: 17.fSize,
      );

  static get titleMediumJostSemiBold =>
      theme.textTheme.titleMedium!.jost.copyWith(
        fontSize: 17.fSize,
        fontWeight: FontWeight.w600,
      );

  static get titleSmallRobotoBlueGray700Medium =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.blueGray700,
        fontWeight: FontWeight.w500,
      );

  static get titleSmallRobotoBlueGray700_1 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.blueGray700,
      );

  static get titleSmallRobotoBlueGray50006 =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: appTheme.blueGray50006,
      );

  static get titleSmallRobotoOnPrimaryContainer =>
      theme.textTheme.titleSmall!.roboto.copyWith(
        color: theme.colorScheme.onPrimaryContainer,
        fontWeight: FontWeight.w500,
      );

  static get titleMediumRobotoBlueGray10003 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.blueGray10003,
        fontSize: 19.fSize,
        fontWeight: FontWeight.w600,
      );

  static get titleMediumRobotoBlack900 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.black900,
        fontWeight: FontWeight.w700,
      );

  static get bodySmallRobotoBlueGray40001 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray40001,
        fontSize: 11.fSize,
      );

  static get titleLargeRobotoBlack900 =>
      theme.textTheme.titleLarge!.roboto.copyWith(
        color: appTheme.black900,
        fontSize: 20.fSize,
      );

  static get titleMediumRobotoGreen300_1 =>
      theme.textTheme.titleMedium!.roboto.copyWith(
        color: appTheme.green300,
      );

  static get bodySmallRobotoBlueGray700 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.blueGray700,
        fontSize: 11.fSize,
      );

  static get bodySmallRobotoGray600 =>
      theme.textTheme.bodySmall!.roboto.copyWith(
        color: appTheme.gray600,
        fontSize: 11.fSize,
      );

  static get headlineMediumBlueGray50006 =>
      theme.textTheme.headlineMedium?.copyWith(
        color: appTheme.blueGray50006,
      );

  static get labelLightGreen600 =>
      theme.textTheme.labelMedium!.copyWith(
        color: appTheme.green700,
        fontSize: 12.fSize,
      );
}
