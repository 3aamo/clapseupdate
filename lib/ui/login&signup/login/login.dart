import 'package:clapse/components/main/button.dart';
import 'package:clapse/components/main/input.dart';
import 'package:clapse/home.dart';
import 'package:clapse/littlewidget/or.dart';
import 'package:clapse/littlewidget/termtext.dart';
import 'package:clapse/theme/mycolors.dart';
import 'package:clapse/theme/mytexts.dart';
import 'package:clapse/ui/login&signup/forgetpassword/modal.dart';
import 'package:clapse/ui/login&signup/login/verify.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Login extends StatelessWidget {
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
                )
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 24.r),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text('Password'),
                SizedBox(
                  height: 16.h,
                ),
                Input(
                  width: swidth,
                  labletext: 'Password',
                  showPrefixIcon: true,
                  showSuffixIcon: true,
                  svgpathsuffix: 'assets/images/icon/show.svg',
                  svgpathsuffix2: 'assets/images/icon/hide.svg',
                  svgpathprefix: 'assets/images/icon/password.svg',
                  prefixiconcolor: context.o4,
                  suffixiconcolor: context.pmain,
                ),
                SizedBox(
                  height: 8.h,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    TextButton(
                        onPressed: () {
                          showModalBottomSheet(
                              isScrollControlled: true,
                              context: context,
                              builder: (context) {
                                return Modal();
                              });
                        },
                        child: Text(
                          'Forget Password?',
                          style: context.meduim16.copyWith(
                              color: context.pdim, fontWeight: FontWeight.w700),
                        )),
                  ],
                ),
                SizedBox(
                  height: 8.h,
                ),
                Button(
                    width: swidth,
                    height: 60.h,
                    lable: 'Login',
                    showicon: [false, false],
                    ontab: () {
                      Navigator.push(context,
                          MaterialPageRoute(builder: (context) => Verify()));
                    },
                    colorbutton: context.pmain,
                    colortext: context.o1),
              ],
            ),
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
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Verify()));
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
