import 'package:clapse/theme/mycolors.dart';

import 'package:clapse/theme/mytexts.dart';

import 'package:flutter/material.dart';

class TAppTheme {
  TAppTheme._();

  static ThemeData lightTheme = ThemeData(
      fontFamily: 'Kook',
      useMaterial3: true,
      brightness: Brightness.light,
      scaffoldBackgroundColor: MyColors.o2,
      textTheme: lightTextTheme,
      colorScheme: myLightColorScheme);
  static ThemeData darkTheme = ThemeData(
      fontFamily: 'Kook',
      useMaterial3: true,
      brightness: Brightness.dark,
      scaffoldBackgroundColor: MyColors.o2Dark,
      textTheme: aliTextTheme2,
      colorScheme: myDarkColorScheme);
}
