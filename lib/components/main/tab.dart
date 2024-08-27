import 'package:clapse/theme/mycolors.dart';

import 'package:clapse/ui/login&signup/auth.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Tab1 extends StatefulWidget {
  @override
  State<Tab1> createState() => _Tab1State();
}

class _Tab1State extends State<Tab1> {
  int selectedTabIndex = login;
  static const int login = 0;
  static const int signup = 1;

  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    final ThemeData themeData = Theme.of(context);
    return SizedBox(
      width: 280.w,
      child: AspectRatio(
        aspectRatio: 280 / 46,
        child: Container(
          decoration: ShapeDecoration(
            color: context.o2,
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(14)),
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
                              ? themeData.colorScheme.surfaceVariant
                              : themeData.colorScheme.onSurfaceVariant,
                          borderRadius: BorderRadius.circular(12.r)),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            selectedTabIndex = login;
                          });
                        },
                        child: Text(
                          'Log In',
                          style: themeData.textTheme.bodyMedium!.copyWith(
                              fontSize: 16.sp,
                              fontWeight: selectedTabIndex == login
                                  ? FontWeight.w700
                                  : FontWeight.w500,
                              color: selectedTabIndex == login
                                  ? themeData.colorScheme.onPrimary
                                  : themeData.colorScheme.onInverseSurface),
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
                          color: selectedTabIndex == signup
                              ? themeData.colorScheme.surfaceVariant
                              : themeData.colorScheme.onSurfaceVariant,
                          borderRadius: BorderRadius.circular(12.r)),
                      child: TextButton(
                        onPressed: () {
                          setState(() {
                            selectedTabIndex = signup;
                          });
                        },
                        child: Text(
                          'Sign Up',
                          style: themeData.textTheme.bodyMedium!.copyWith(
                              fontSize: 16.sp,
                              fontWeight: selectedTabIndex == signup
                                  ? FontWeight.w700
                                  : FontWeight.w500,
                              color: selectedTabIndex == signup
                                  ? themeData.colorScheme.onPrimary
                                  : themeData.colorScheme.onInverseSurface),
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
    );
  }
}
//selectedTabIndex == signup ? Signup() : Login(),