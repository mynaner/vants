import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class VTheme {
  ///  Color Palette
  static Color black = Colors.black;
  static Color white = Colors.white;
  static Color gray1 = const Color(0xfff7f8fa);
  static Color gray2 = const Color(0xfff2f3f5);
  static Color gray3 = const Color(0xffebedf0);
  static Color gray4 = const Color(0xffdcdee0);
  static Color gray5 = const Color(0xffc8c9cc);
  static Color gray6 = const Color(0xff969799);
  static Color gray7 = const Color(0xff646566);
  static Color gray8 = const Color(0xff323233);
  static Color red = const Color(0xffee0a24);
  static Color blue = const Color(0xff1989fa);
  static Color orange = const Color(0xffff976a);
  static Color orangeDark = const Color(0xffed6a0c);
  static Color orangeLight = const Color(0xfffffbe8);
  static Color green = const Color(0xff07c160);

  /// Gradient Colors
  static Gradient gradientRed = const LinearGradient(
    colors: [Color(0xffff6034), Color(0xffee0a24)],
  );
  static Gradient gradientOrange = const LinearGradient(
    colors: [Color(0xffffd01e), Color(0xffff8917)],
  );

  ///  Component Colors
  static Color primaryColor = blue;
  static Color successColor = green;
  static Color dangerColor = red;

  static Color warningColor = orange;
  static Color textColor = gray8;
  static Color textColor2 = gray6;
  static Color textColor3 = gray5;
  static Color textLinkColor = const Color(0xff576b95);
  static Color activeColor = gray2;
  static double activeOpacity = .6;
  static double disabledOpacity = .5;
  static Color backgroundColor = gray2;
  static Color backgroundColorLight = white;

  /// pading
  static double paddingBase = 3;
  static double paddingXs = paddingBase * 2;
  static double paddingSm = paddingBase * 3;
  static double paddingMd = paddingBase * 4;
  static double paddingLg = paddingBase * 6;
  static double paddingXl = paddingBase * 8;

  /// font
  static double fontSizeXs = 12;
  static double fontSizeSm = 14;
  static double fontSizeMd = 16;
  static double fontSizeLg = 20;
  static double fontWeightBoold = 500;
  static double lineHeightXs = 14;
  static double lineHeightSm = 18;
  static double lineHeightMd = 20;
  static double lineHeightLg = 22;

  //

  static Color borderColor = gray3;
  static double borderWidthBase = 1;
  static double borderRadiusSm = 2;
  static double borderRadiusmd = 4;
  static double borderRadiuslg = 8;
  static double borderRadiusMax = 999;
}
