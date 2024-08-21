import 'package:flutter/material.dart';

class TextStyles {
  //* small size text
  static TextStyle get smallText1 => const TextStyle(fontSize: 10);
  static TextStyle get smallText2 => const TextStyle(fontSize: 11);
  static TextStyle get smallText3 => const TextStyle(fontSize: 12);
  static TextStyle get smallText4 => const TextStyle(fontSize: 13);

  static TextStyle get smallBoldText1 => const TextStyle(
        fontSize: 10,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get smallBoldText2 => const TextStyle(
        fontSize: 11,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get smallBoldText3 => const TextStyle(
        fontSize: 12,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get smallBoldText4 => const TextStyle(
        fontSize: 13,
        fontWeight: FontWeight.bold,
      );

  //* medium size text
  static TextStyle get mediumText1 => const TextStyle(fontSize: 14);
  static TextStyle get mediumText2 => const TextStyle(fontSize: 16);
  static TextStyle get mediumText3 => const TextStyle(fontSize: 18);
  static TextStyle get mediumText4 => const TextStyle(fontSize: 20);

  static TextStyle get mediumBoldText1 => const TextStyle(
        fontSize: 14,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get mediumBoldText2 => const TextStyle(
        fontSize: 16,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get mediumBoldText3 => const TextStyle(
        fontSize: 18,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get mediumBoldText4 => const TextStyle(
        fontSize: 20,
        fontWeight: FontWeight.bold,
      );

  //* large size text
  static TextStyle get largeText1 => const TextStyle(fontSize: 22);
  static TextStyle get largeText2 => const TextStyle(fontSize: 24);
  static TextStyle get largeText3 => const TextStyle(fontSize: 26);
  static TextStyle get largeText4 => const TextStyle(fontSize: 28);
  static TextStyle get largeText5 => const TextStyle(fontSize: 30);

  static TextStyle get largeBoldText1 => const TextStyle(
        fontSize: 22,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get largeBoldText2 => const TextStyle(
        fontSize: 24,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get largeBoldText3 => const TextStyle(
        fontSize: 26,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get largeBoldText4 => const TextStyle(
        fontSize: 28,
        fontWeight: FontWeight.bold,
      );
  static TextStyle get largeBoldText5 => const TextStyle(
        fontSize: 30,
        fontWeight: FontWeight.bold,
      );

  //* other font style
  static TextStyle get cuteText1 => const TextStyle(
        fontSize: 40,
        fontWeight: FontWeight.bold,
      );
}

abstract class AppColors {
  static const whiteColors = [
    //? 0
    Color(0xffffffff),
    Color(0xfff5f5f5),
    Color(0xfff5f5f5),
    //? 3
    Color(0xffffffe0),
    Color(0xfff0ffff),
  ];

  static const blackColors = [
    //? 0
    Color(0xff222222),
    Color(0xff2b2b2b),
    Color(0xff333333),
    //? 3
    Color(0xff3b3b3b),
    Color(0xff424242),
  ];

  static const lightGrayColors = [
    //? 0
    Color(0xfff2f2f2),
    Color(0xffe6e6e6),
    Color(0xffd9d9d9),
    //? 3
    Color(0xffcccccc),
    Color(0xffbfbfbf),
  ];

  static const blueColors = [
    //? 0
    Color(0xff87CEEB),
    Color(0xff1E90FF),
    Color(0xff20B2AA),
    //? 3
    Color(0xff4169E1),
    Color(0xff000080),
  ];
}
