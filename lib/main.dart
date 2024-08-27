import 'package:clapse/home.dart';
import 'package:clapse/home2.dart';
import 'package:clapse/theme/theme.dart';
import 'package:clapse/ui/login&signup/auth.dart';
import 'package:clapse/ui/profile/profile.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
        designSize: const Size(428, 926), // اندازه طراحی اپلیکیشن شما
        minTextAdapt: true,
        builder: (context, child) {
          return MaterialApp(
              themeMode: ThemeMode.system,
              theme: TAppTheme.lightTheme,
              darkTheme: TAppTheme.darkTheme,
              home: Profile());
        });
  }
}
