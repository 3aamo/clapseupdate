import 'package:clapse/theme/mycolors.dart';
import 'package:clapse/theme/mytexts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Countdown extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 92.w,
      child: AspectRatio(
        aspectRatio: 91 / 32,
        child: Container(
          padding: EdgeInsets.symmetric(horizontal: 12.r, vertical: 4.r),
          decoration: BoxDecoration(
            color: context.scontainer.withOpacity(0.14),
            borderRadius: BorderRadius.circular(20.0),
          ),
          child: Text('00:38 sec',
              style: context.meduim16.copyWith(color: context.sdim)),
        ),
      ),
    );
  }
}
