import 'package:clapse/components/main/button.dart';
import 'package:clapse/components/main/input.dart';
import 'package:clapse/theme/mycolors.dart';
import 'package:clapse/theme/mytexts.dart';
import 'package:clapse/ui/login&signup/forgetpassword/recovercode.dart';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Modal extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    return Container(
      decoration: BoxDecoration(
          borderRadius: const BorderRadius.only(
              topLeft: Radius.circular(18), topRight: Radius.circular(18)),
          color: context.o1),
      width: swidth,
      height: 268.h,
      child: Padding(
        padding: EdgeInsets.fromLTRB(28.r, 12.r, 28.r, 28.r),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: 8.h,
            ),
            Container(
              width: swidth,
              height: 35.h,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SvgPicture.asset(
                    'assets/images/icon/Line.svg',
                    color: context.o3,
                  )
                ],
              ),
            ),
            Text(
              'Please enter your Email',
              style: context.meduim16,
            ),
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
            SizedBox(
              height: 24.r,
            ),
            Button(
                width: swidth,
                height: 60.h,
                lable: 'Send recovery code',
                showicon: [false, false],
                ontab: () {
                  Navigator.push(context,
                      MaterialPageRoute(builder: (context) => Recoverycode()));
                },
                colorbutton: context.pmain,
                colortext: context.o1),
          ],
        ),
      ),
    );
  }
}
