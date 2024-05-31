import 'package:flutter/material.dart';

class AppTypography extends ThemeExtension<AppTypography> {
  static const String fontFamily = 'SFProDisplay';

  final TextStyle? title1Sembold;
  final TextStyle? title2Sembold;
  final TextStyle? title3Medium;
  final TextStyle? title4Regular;
  final TextStyle? text1Regular;
  final TextStyle? text2Sembold;
  final TextStyle? buttonText1Regular;
  final TextStyle? tabText;

  const AppTypography({
    required this.title1Sembold,
    required this.title2Sembold,
    required this.title3Medium,
    required this.title4Regular,
    required this.text1Regular,
    required this.text2Sembold,
    required this.buttonText1Regular,
    required this.tabText,
  });

  AppTypography.custom():
        title1Sembold = const TextStyle(
            fontWeight: FontWeight.w600,
            fontSize: 22,
          ),
        title2Sembold = const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 20,
        ),
        title3Medium = const TextStyle(
          fontWeight: FontWeight.w500,
          fontSize: 16,
        ),
        title4Regular = const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 14,
        ),
        text1Regular = const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 16,
        ),
        text2Sembold = const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 14,
        ),
        buttonText1Regular = const TextStyle(
          fontWeight: FontWeight.w600,
          fontSize: 16,
          // height: 20.8
        ),
        tabText = const TextStyle(
          fontWeight: FontWeight.w400,
          fontSize: 10,
        );

  @override
  ThemeExtension<AppTypography> copyWith({
    TextStyle? title1Sembold,
    TextStyle? title2Sembold,
    TextStyle? title3Medium,
    TextStyle? title4Regular,
    TextStyle? text1Regular,
    TextStyle? text2Sembold,
    TextStyle? buttonText1Regular,
    TextStyle? tabText,
  }) {
    return AppTypography(
      title1Sembold: title1Sembold,
      title2Sembold: title2Sembold ?? this.title2Sembold,
      title3Medium: title3Medium ?? this.title3Medium,
      title4Regular: title4Regular ?? this.title4Regular,
      text1Regular: text1Regular ?? this.text1Regular,
      text2Sembold: text2Sembold ?? this.text2Sembold,
      buttonText1Regular: buttonText1Regular ?? this.buttonText1Regular,
      tabText: tabText ?? this.tabText,
    );
  }

  @override
  ThemeExtension<AppTypography> lerp(
      covariant ThemeExtension<AppTypography>? other, double t) {
    if (other is! AppTypography) {
      return this;
    }
    return AppTypography(
      title1Sembold: TextStyle.lerp(title1Sembold, other.title1Sembold, t),
      title2Sembold: TextStyle.lerp(title2Sembold, other.title2Sembold, t),
      title3Medium: TextStyle.lerp(title3Medium, other.title3Medium, t),
      title4Regular: TextStyle.lerp(title4Regular, other.title4Regular, t),
      text1Regular: TextStyle.lerp(text1Regular, other.text1Regular, t),
      text2Sembold: TextStyle.lerp(text2Sembold, other.text2Sembold, t),
      buttonText1Regular:
          TextStyle.lerp(buttonText1Regular, other.buttonText1Regular, t),
      tabText: TextStyle.lerp(tabText, other.tabText, t),
    );
  }
}
