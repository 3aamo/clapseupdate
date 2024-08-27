import 'package:clapse/components/main/button.dart';
import 'package:clapse/components/main/header.dart';
import 'package:clapse/components/main/input.dart';
import 'package:clapse/littlewidget/termtext.dart';
import 'package:clapse/theme/mycolors.dart';
import 'package:clapse/theme/mytexts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Setnewpassword extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    bool isDarkMode = Theme.of(context).brightness == Brightness.dark;
    double availableHeight = MediaQuery.of(context).size.height - 100.h;
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              label: 'Set a new password',
              showContainers: [false, false, false, false],
              label2: '',
              textcolor: context.o7,
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
                        SvgPicture.asset('assets/images/icon/setpassword.svg'),
                        SizedBox(
                          height: 16.h,
                        ),
                        Text(
                          'You have successfully restored your account.\nPlease set a new password to log in.',
                          textAlign: TextAlign.center,
                          style: context.meduim16
                              .copyWith(fontSize: 18.sp, height: 2.1),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 24.r, bottom: 24.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Input(
                                width: swidth,
                                labletext: 'Password',
                                showPrefixIcon: true,
                                showSuffixIcon: true,
                                svgpathsuffix: 'assets/images/icon/show.svg',
                                svgpathsuffix2: 'assets/images/icon/hide.svg',
                                svgpathprefix:
                                    'assets/images/icon/password.svg',
                                prefixiconcolor: context.o4,
                                suffixiconcolor: context.pmain,
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 24.r),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Input(
                                width: swidth,
                                labletext: 'Repeat the password',
                                showPrefixIcon: true,
                                showSuffixIcon: true,
                                svgpathsuffix: 'assets/images/icon/show.svg',
                                svgpathsuffix2: 'assets/images/icon/hide.svg',
                                svgpathprefix:
                                    'assets/images/icon/password.svg',
                                prefixiconcolor: context.o4,
                                suffixiconcolor: context.pmain,
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: swidth,
                          height: 164.h,
                          decoration: BoxDecoration(
                              color: context.scontainer.withOpacity(0.14),
                              borderRadius: BorderRadius.circular(20.r)),
                          child: Padding(
                            padding: EdgeInsets.all(16.r),
                            child: Column(
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          'assets/images/icon/checkchoice.svg',
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text(
                                          'At least 8 characters',
                                          style: context.meduim16.copyWith(
                                              color: context.o5,
                                              fontSize: 15.5.sp),
                                        )
                                      ],
                                    )),
                                Divider(
                                  indent: 36,
                                  thickness: 0.6,
                                  color: context.o4.withOpacity(0.2),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          isDarkMode
                                              ? 'assets/images/icon/checkchoicedark.svg'
                                              : 'assets/images/icon/checkchoice.svg',
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text(
                                          'Includes upper and lower case English letters',
                                          style: context.meduim16.copyWith(
                                              color: context.o5,
                                              fontSize: 15.5.sp),
                                        )
                                      ],
                                    )),
                                Divider(
                                  indent: 36,
                                  thickness: 0.6,
                                  color: context.o4.withOpacity(0.2),
                                ),
                                Expanded(
                                    flex: 1,
                                    child: Row(
                                      children: [
                                        SvgPicture.asset(
                                          isDarkMode
                                              ? 'assets/images/icon/checkchoicedark2.svg'
                                              : 'assets/images/icon/checkchoice2.svg',
                                        ),
                                        SizedBox(
                                          width: 8.w,
                                        ),
                                        Text(
                                          'including numbers',
                                          style: context.meduim16.copyWith(
                                            color: context.o5,
                                            fontSize: 15.5.sp,
                                            decoration: TextDecoration
                                                .lineThrough, // خط کشیده شده
                                            decorationColor:
                                                context.o5, // رنگ خط
                                            decorationThickness: 1,
                                          ),
                                        )
                                      ],
                                    ))
                              ],
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 28.h,
                        ),
                        Button(
                            width: swidth,
                            height: 60.h,
                            lable: 'Finish',
                            showicon: [false, false],
                            ontab: () {},
                            colorbutton: context.pmain,
                            colortext: context.o1),
                        Spacer(),
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
