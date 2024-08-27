import 'package:clapse/theme/mycolors.dart';
import 'package:clapse/theme/mytexts.dart';
import 'package:flutter/widgets.dart';

class Term extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return RichText(
      textAlign: TextAlign.center,
      text: TextSpan(
          style: context.meduim16.copyWith(color: context.o5, height: 2),
          children: <TextSpan>[
            const TextSpan(
                text: 'Having an account means that you agree with our '),
            TextSpan(
              text: 'Terms & Conditions',
              style:
                  context.meduim16.copyWith(color: context.pdim, height: 1.5),
            ),
            const TextSpan(
              text: ' and ',
            ),
            TextSpan(
              text: 'Privacy Policies.',
              style:
                  context.meduim16.copyWith(color: context.pdim, height: 1.5),
            )
          ]),
    );
  }
}
