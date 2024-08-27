import 'package:clapse/theme/mycolors.dart';
import 'package:clapse/theme/mytexts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SpotTrade extends StatefulWidget {
  final VoidCallback onTab;
  final String svgpath;
  final String lable;
  final String lable2;

  const SpotTrade(
      {super.key,
      required this.onTab,
      required this.svgpath,
      required this.lable,
      required this.lable2});

  @override
  State<SpotTrade> createState() => _SpotTradeState();
}

class _SpotTradeState extends State<SpotTrade> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: widget.onTab,
          child: Row(
            children: [
              Container(
                height: 52.h,
                width: 52.w,
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  color: context.pcontainer.withOpacity(0.1),
                ),
                child: SvgPicture.asset(
                  widget.svgpath ?? 'assets/default.svg',
                  color: context.pmain,
                  fit: BoxFit.scaleDown,
                ),
              ),
              SizedBox(
                width: 16.w,
              ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(widget.lable,
                        style: context.meduim16.copyWith(
                            fontWeight: FontWeight.w700, height: 1.7)),
                    Text(
                      widget.lable2,
                      style: context.meduim16
                          .copyWith(color: context.o5, fontSize: 14.sp),
                    )
                  ],
                ),
              ),
              SvgPicture.asset('assets/images/icon/Chevron.svg')
            ],
          ),
        ),
      ],
    );
  }
}
