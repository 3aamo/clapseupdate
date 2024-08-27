import 'package:clapse/components/main/header.dart';
import 'package:clapse/theme/mycolors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Profile extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          children: [
            Header(
              label: '',
              showContainers: [true, false, false, true],
              label2: '',
              textcolor: context.o7,
              svgpath1: 'assets/images/icon/arrowback.svg',
              svgpath4: 'assets/images/icon/exit.svg',
              color1: context.pmain,
              color4: context.emain,
            ),
            SvgPicture.asset('assets/images/icon/Gigol.svg')
          ],
        ),
      )),
    );
  }
}
