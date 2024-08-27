import 'package:clapse/components/main/button.dart';
import 'package:clapse/components/main/header.dart';
import 'package:clapse/components/main/verificaton.dart';
import 'package:clapse/littlewidget/countdown.dart';
import 'package:clapse/littlewidget/termtext.dart';
import 'package:clapse/theme/mycolors.dart';
import 'package:clapse/theme/mytexts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Verify extends StatefulWidget {
  @override
  State<Verify> createState() => _VerifyState();
}

class _VerifyState extends State<Verify> {
  @override
  Widget build(BuildContext context) {
    final String email = "RE79.Aliasghar@gmail.com"; // آدرس ایمیل
    double availableHeight = MediaQuery.of(context).size.height - 100.h;
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              label: 'Verify',
              showContainers: [true, false, false, false],
              label2: '',
              textcolor: context.o7,
              svgpath1: 'assets/images/icon/arrowback.svg',
              firstActive: () {
                Navigator.pop(context);
              },
              color1: context.pmain,
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
                    padding: EdgeInsets.fromLTRB(28.r, 40.r, 28.r, 28.r),
                    child: Column(
                      children: [
                        SvgPicture.asset('assets/images/icon/verify.svg'),
                        SizedBox(
                          height: 16.h,
                        ),
                        RichText(
                          textAlign: TextAlign.center,
                          text: TextSpan(
                            style: context.meduim16
                                .copyWith(fontSize: 18.sp, height: 2),
                            children: [
                              TextSpan(
                                text:
                                    'We have just sent a code to your email:\n',
                              ),
                              TextSpan(
                                text: '$email',
                                style: context.meduim16.copyWith(
                                  fontSize: 18.sp,
                                  height: 2,
                                  color: context.sdim,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              TextSpan(
                                text: '. Please enter it.\n',
                              ),
                              TextSpan(
                                text:
                                    "(If you haven't received it yet, check your spam folder)",
                                style: context.meduim16
                                    .copyWith(color: context.o4, height: 2),
                              )
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                        Verification(),
                        SizedBox(
                          height: 28.h,
                        ),
                        Button(
                            width: swidth,
                            height: 60.h,
                            lable: 'Confirm',
                            showicon: [false, false],
                            ontab: () {},
                            colorbutton: context.pmain,
                            colortext: context.o1),
                        SizedBox(
                          height: 28.h,
                        ),
                        Countdown(),
                        Spacer(),
                        Term()
                      ],
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      )),
    );
  }
}
