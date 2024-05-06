import 'package:charity_app/core/app_export.dart';
import 'package:flutter/material.dart';

String _appTheme = "lightCode";

LightCodeColors get appTheme => ThemeHelper().themeColor();

ThemeData get theme => ThemeHelper().themeData();

// ignore_for_file: must_be_immutable
class ThemeHelper {
  Map<String, LightCodeColors> _supportedCustomColor = {
    'lightCode': LightCodeColors()
  };

  Map<String, ColorScheme> _supportedColorScheme = {
    'lightCode': ColorSchemes.lightCodeColorScheme
  };

  void changeTheme(String _newTheme) {
    _appTheme = _newTheme;
  }

  LightCodeColors _getThemeColors() {
    return _supportedCustomColor[_appTheme] ?? LightCodeColors();
  }

  ThemeData _getThemeData() {
    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.lightCodeColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(5),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray300,
      ),
    );
  }

  /// Returns the lightCode colors for the current theme.
  LightCodeColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.blueGray10003,
          fontSize: 16.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.blueGray700,
          fontSize: 14.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        ),
        headlineLarge: TextStyle(
          color: appTheme.blueGray700,
          fontSize: 33.fSize,
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w700,
        ),
        labelLarge: TextStyle(
          color: appTheme.gray50005,
          fontSize: 12.fSize,
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        ),
        titleLarge: TextStyle(
          color: appTheme.blueGray700,
          fontSize: 22.fSize,
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w500,
        ),
        titleMedium: TextStyle(
          color: appTheme.blueGray700,
          fontSize: 16.fSize,
          fontFamily: 'Josefin Sans',
          fontWeight: FontWeight.w500,
        ),
        titleSmall: TextStyle(
          color: appTheme.blueGray50003,
          fontSize: 14.fSize,
          fontFamily: 'Inter',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final lightCodeColorScheme = ColorScheme.light(
    primary: Color(0XFFD2E792),
    primaryContainer: Color(0XFF364B6E),
    errorContainer: Color(0XFF797B7D),
    onPrimary: Color(0XFF1A212D),
    onPrimaryContainer: Color(0XFFFFFFFF),
  );
}

/// Class containing custom colors for a lightCode theme.
class LightCodeColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blueA10096 => Color(0X9687AFEB);
  Color get blue400 => Color(0XFF3EB5E8);

  // BlueGray
  Color get blueGray10001 => Color(0XFFC8CBD1);

  Color get blueGray10003 => Color(0XFFD2DEF1);

  Color get blueGray30002 => Color(0XFF9DA7B7);

  Color get blueGray400 => Color(0XFF888888);

  Color get blueGray50003 => Color(0XFF707D92);

  Color get blueGray700 => Color(0XFF364C6F);

  Color get blueGray200 => Color(0XFFAAB5C6);

  Color get blueGray50049 => Color(0X4959729A);

  Color get blueGray50006 => Color(0XFFD2DEF1);

  Color get blueGray40001 => Color(0XFF78858F);

  Color get blueGray40002 => Color(0XFF6D7C94);

  // Gray
  Color get gray100 => Color(0XFFF3F4F9);

  Color get gray300 => Color(0XFFE6E6E6);

  Color get gray30001 => Color(0XFFD5E0E7);

  Color get gray50004 => Color(0XFF9DA0A5);

  Color get gray600 => Color(0XFF828282);

  Color get gray50005 => Color(0XFF999999);

  Color get gray90001 => Color(0XFF001E2F);

  Color get gray9000f => Color(0X0F101828);

  Color get gray900 => Color(0XFFA8A5A5);

  // Indigo
  Color get indigo50 => Color(0XFFE4E6EB);

  Color get indigo200 => Color(0XFF97BFD6);

  Color get indigo500 => Color(0XFF4468A0);

  Color get indigo700 => Color(0XFF296387);

  Color get indigo70001 => Color(0XFF296487);

  Color get indigo70007 => Color(0X07286487);

  // Green
  Color get green100 => Color(0XFFD2E892);

  Color get green300 => Color(0XFF7CAA7B);

  Color get green700 => Color(0XFF8CAA34);

  // White
  Color get whiteA700 => Color(0XFFFAFDFF);
}
