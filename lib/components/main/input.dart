import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

class Input extends StatefulWidget {
  final bool? showPrefixIcon;
  final bool? showSuffixIcon;
  final double width;
  final String labletext;
  final Color? prefixiconcolor;
  final Color? suffixiconcolor;
  final String? svgpathprefix;
  final String? svgpathsuffix;
  final String? svgpathsuffix2;

  const Input({
    super.key,
    this.showPrefixIcon = false,
    this.showSuffixIcon = false,
    required this.width,
    required this.labletext,
    this.prefixiconcolor,
    this.suffixiconcolor,
    this.svgpathprefix,
    this.svgpathsuffix,
    this.svgpathsuffix2,
  });
  @override
  State<Input> createState() => _InputState();
}

class _InputState extends State<Input> {
  String errorTextVal = '';
  bool obscureText = false;
  @override
  Widget build(BuildContext context) {
    double swidth = MediaQuery.of(context).size.width;
    double sheight = MediaQuery.of(context).size.height;
    final ThemeData themeData = Theme.of(context);
    return SizedBox(
      width: widget.width,
      child: TextField(
        obscureText: obscureText,
        textAlignVertical: TextAlignVertical.bottom,
        style: themeData.textTheme.bodyMedium!
            .copyWith(fontWeight: FontWeight.w700, fontSize: 18),
        onChanged: (value) {
          setState(() {
            if (value.contains(' ')) {
              errorTextVal = 'dont';
            } else {
              errorTextVal = '';
            }
          });
        },
        decoration: InputDecoration(
            contentPadding:
                EdgeInsets.symmetric(vertical: 17.r, horizontal: 16.r),
            prefixIcon: widget.showPrefixIcon!
                ? Padding(
                    padding: EdgeInsets.only(left: 8.r),
                    child: SvgPicture.asset(
                      widget.svgpathprefix ?? 'assets/default.svg',
                      fit: BoxFit.scaleDown,
                      color: widget.prefixiconcolor,
                    ),
                  )
                : null,
            suffixIcon: widget.showSuffixIcon!
                ? Padding(
                    padding: EdgeInsets.only(right: 8.r),
                    child: InkWell(
                      onTap: () {
                        setState(() {
                          obscureText = !obscureText;
                        });
                      },
                      child: SvgPicture.asset(
                        obscureText
                            ?
                            // ignore: dead_code
                            widget.svgpathsuffix2 ?? 'assets/default.svg'
                            : widget.svgpathsuffix ?? 'assets/default.svg',
                        fit: BoxFit.scaleDown,
                        color: widget.suffixiconcolor,
                      ),
                    ),
                  )
                : null,
            labelText: widget.labletext,
            labelStyle: themeData.textTheme.bodyMedium!.copyWith(
              fontWeight: FontWeight.w500,
              fontSize: 16.sp,
              color: themeData.colorScheme.onInverseSurface,
            ),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            errorText: errorTextVal.isEmpty ? null : errorTextVal,
            errorStyle: TextStyle(height: 1, fontSize: 0),
            focusedErrorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: themeData.colorScheme.error,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20)),
            errorBorder: OutlineInputBorder(
                borderSide: BorderSide(
                  color: themeData.colorScheme.error,
                  width: 2,
                ),
                borderRadius: BorderRadius.circular(20)),
            focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    BorderSide(color: themeData.colorScheme.primary, width: 2)),
            enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(20),
                borderSide:
                    BorderSide(color: themeData.colorScheme.inverseSurface))),
      ),
    );
  }
}
