import 'package:clapse/theme/mycolors.dart';
import 'package:clapse/theme/mytexts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class Or extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 162.5.w,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                width: 0.4,
                strokeAlign: BorderSide.strokeAlignCenter,
                color: context.o3,
              ),
            ),
          ),
        ),
        SizedBox(
          width: 16.w,
        ),
        Text(
          'or',
          style: context.meduim16.copyWith(color: context.o4),
        ),
        SizedBox(
          width: 16.w,
        ),
        Container(
          width: 162.5.w,
          decoration: ShapeDecoration(
            shape: RoundedRectangleBorder(
              side: BorderSide(
                  width: 0.4,
                  strokeAlign: BorderSide.strokeAlignCenter,
                  color: context.o3),
            ),
          ),
        ),
      ],
    );
  }
}
