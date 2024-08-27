import 'package:clapse/components/main/header.dart';

import 'package:clapse/theme/mycolors.dart';
import 'package:clapse/ui/login&signup/login/login.dart';
import 'package:clapse/ui/login&signup/register/signup.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Authscreen extends StatefulWidget {
  @override
  State<Authscreen> createState() => _AuthscreenState();
}

class _AuthscreenState extends State<Authscreen> {
  int selectedTabIndex = login;
  static const int login = 0;
  static const int signup = 1;
  @override
  Widget build(BuildContext context) {
    final ThemeData themeData = Theme.of(context);
    double availableHeight = MediaQuery.of(context).size.height - 100.h;
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              label: 'Welcome to ',
              showContainers: [true, false, false, true],
              label2: 'Clapse',
              textcolor: context.o7,
              svgpath1: 'assets/images/icon/close.svg',
              svgpath4: 'assets/images/icon/question.svg',
              color1: context.pmain,
              color4: context.pmain,
            ),
            Stack(
              children: [
                Container(
                    width: swidth,
                    height: availableHeight,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(28.r),
                            topRight: Radius.circular(28.r)),
                        color: context.o1),
                    child: Padding(
                        padding: EdgeInsets.all(28.r),
                        child: Column(children: [
                          SizedBox(
                            width: 280.w,
                            child: AspectRatio(
                              aspectRatio: 280 / 46,
                              child: Container(
                                decoration: ShapeDecoration(
                                  color: context.o2,
                                  shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(14)),
                                ),
                                child: Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: EdgeInsets.all(2.r),
                                        child: AspectRatio(
                                          aspectRatio: 137 / 42,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color: selectedTabIndex == login
                                                    ? themeData.colorScheme
                                                        .surfaceVariant
                                                    : themeData.colorScheme
                                                        .onSurfaceVariant,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.r)),
                                            child: TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  selectedTabIndex = login;
                                                });
                                              },
                                              child: Text(
                                                'Log In',
                                                style: themeData
                                                    .textTheme.bodyMedium!
                                                    .copyWith(
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            selectedTabIndex ==
                                                                    login
                                                                ? FontWeight
                                                                    .w700
                                                                : FontWeight
                                                                    .w500,
                                                        color:
                                                            selectedTabIndex ==
                                                                    login
                                                                ? themeData
                                                                    .colorScheme
                                                                    .onPrimary
                                                                : themeData
                                                                    .colorScheme
                                                                    .onInverseSurface),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Padding(
                                        padding: EdgeInsets.all(2.r),
                                        child: AspectRatio(
                                          aspectRatio: 137 / 42,
                                          child: Container(
                                            decoration: BoxDecoration(
                                                color:
                                                    selectedTabIndex == signup
                                                        ? themeData.colorScheme
                                                            .surfaceVariant
                                                        : themeData.colorScheme
                                                            .onSurfaceVariant,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        12.r)),
                                            child: TextButton(
                                              onPressed: () {
                                                setState(() {
                                                  selectedTabIndex = signup;
                                                });
                                              },
                                              child: Text(
                                                'Sign Up',
                                                style: themeData
                                                    .textTheme.bodyMedium!
                                                    .copyWith(
                                                        fontSize: 16.sp,
                                                        fontWeight:
                                                            selectedTabIndex ==
                                                                    signup
                                                                ? FontWeight
                                                                    .w700
                                                                : FontWeight
                                                                    .w500,
                                                        color:
                                                            selectedTabIndex ==
                                                                    signup
                                                                ? themeData
                                                                    .colorScheme
                                                                    .onPrimary
                                                                : themeData
                                                                    .colorScheme
                                                                    .onInverseSurface),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ]))),
                Positioned.fill(
                  top: 80.h, // Adjust based on your UI
                  child: IndexedStack(
                    index: selectedTabIndex,
                    children: [
                      Login(), // نمایش صفحه ورود
                      Signup(), // نمایش صفحه ثبت نام
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      )),
    );
  }
}
