import 'package:clapse/littlewidget/spottrade.dart';
import 'package:clapse/theme/mycolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class HOme2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: context.o1,
            ),
            width: 428,
            height: 300,
            child: Padding(
              padding: EdgeInsets.all(28.r),
              child: Column(
                children: [
                  SpotTrade(
                    onTab: () {},
                    svgpath: 'assets/images/icon/email.svg',
                    lable: 'FOcoud fs.fg;',
                    lable2: '30 minute',
                  )
                ],
              ),
            ),
          )
        ],
      )),
    );
  }
}
