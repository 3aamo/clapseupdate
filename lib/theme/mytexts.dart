import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

// هنوز این بخش کامل تعریف نشده
class LightTextStyles {
  // سبک‌های متن سفارشی ریسپانسیو
  static TextStyle regular13 = TextStyle(
    fontSize: 13.sp,
    fontWeight: FontWeight.w400,
    color: const Color(0xff0c0c0c),
  );

  static TextStyle medium16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: const Color(0xff0c0c0c),
  );

  static TextStyle bold13 = TextStyle(
    fontSize: 13.sp,
    // اندازه متن ریسپانسیو
    fontWeight: FontWeight.w700,
    color: Colors.blue,
  );
}

final TextTheme lightTextTheme = TextTheme(
    headline1: LightTextStyles.regular13,
    bodyText1: LightTextStyles.bold13,
    bodyText2: LightTextStyles.medium16
    // سایر سبک‌های متن
    );

class DarkTextStyle {
  // سبک‌های متن سفارشی ریسپانسیو
  static TextStyle headline1 = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeight.bold,
    color: Color(0xfff3f3f4),
  );

  static TextStyle bold16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: const Color(0xfff3f3f4),
  );

  static TextStyle medium16 = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeight.w500,
    color: const Color(0xfff3f3f4),
  );

  // سایر سبک‌های متن
}

final TextTheme aliTextTheme2 = TextTheme(
  headline1: DarkTextStyle.headline1,
  bodyText1: DarkTextStyle.bold16,
  bodyText2: DarkTextStyle.medium16,
  // سایر سبک‌های متن
);

extension MyTextTheme on BuildContext {
  TextStyle get headline1 => Theme.of(this).textTheme.headline1!;
  TextStyle get bold13 => Theme.of(this).textTheme.bodyText1!;
  TextStyle get meduim16 => Theme.of(this).textTheme.bodyText2!;
  // سایر سبک‌های متن
}
