import 'package:clapse/components/main/button.dart';
import 'package:clapse/components/main/input.dart';
import 'package:clapse/home.dart';
import 'package:clapse/littlewidget/or.dart';
import 'package:clapse/littlewidget/termtext.dart';
import 'package:clapse/theme/mycolors.dart';
import 'package:clapse/theme/mytexts.dart';
import 'package:clapse/ui/login&signup/register/verifysingup.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Signup extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    return Padding(
      padding: EdgeInsets.only(bottom: 28.r, left: 28.r, right: 28.r),
      child: Column(
        children: [
          Padding(
            padding: EdgeInsets.only(top: 24.r, bottom: 24.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome here! To create an account, please enter your information.',
                  style: context.meduim16
                      .copyWith(fontSize: 17.6.sp, height: 2.sp),
                ),
                SizedBox(
                  height: 24.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Full name',
                          style: context.meduim16,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Input(
                          width: 174.w,
                          labletext: 'Write here ...',
                          showPrefixIcon: true,
                          svgpathprefix: 'assets/images/icon/user.svg',
                          prefixiconcolor: context.o4,
                        )
                      ],
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Career',
                          style: context.meduim16,
                        ),
                        SizedBox(
                          height: 16.h,
                        ),
                        Input(
                          width: 174.w,
                          labletext: 'Write here ...',
                          showPrefixIcon: true,
                          svgpathprefix: 'assets/images/icon/bag.svg',
                          prefixiconcolor: context.o4,
                        )
                      ],
                    )
                  ],
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Email'),
                SizedBox(
                  height: 16.h,
                ),
                Input(
                  width: swidth,
                  labletext: 'Example@gmail.com',
                  showPrefixIcon: true,
                  svgpathprefix: 'assets/images/icon/email.svg',
                  prefixiconcolor: context.o4,
                ),
              ],
            ),
          ),
          Button(
              width: swidth,
              height: 60.h,
              lable: 'Send activation code',
              showicon: [false, false],
              ontab: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Verifysignup()));
              },
              colorbutton: context.pmain,
              colortext: context.o1),
          SizedBox(
            height: 24.h,
          ),
          Or(),
          SizedBox(
            height: 24.h,
          ),
          Button(
              width: swidth,
              height: 60.h,
              lable: 'Continue with Google',
              showicon: [true, false],
              svgpath1: 'assets/images/icon/google.svg',
              ontab: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Verifysignup()));
              },
              colorbutton: context.o2variant,
              colortext: context.o7),
          Spacer(),
          Term()
        ],
      ),
    );
  }
}
