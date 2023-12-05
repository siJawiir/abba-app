import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../utils/constants/colors.dart';
import '../../../../../utils/constants/texts.dart';

class LoginDivider extends StatelessWidget {
  const LoginDivider({
    super.key,
    required this.dark,
  });

  final bool dark;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Flexible(
          child: Divider(
            color: dark ? MyColors.light : MyColors.lighter,
            thickness: 0.5,
            indent: 60,
            endIndent: 10,
          ),
        ),
        Text(
          MyTexts.supportBy.capitalize!,
          style: Theme.of(context).textTheme.labelMedium,
        ),
        Flexible(
          child: Divider(
            color: dark ? MyColors.light : MyColors.lighter,
            thickness: 0.5,
            indent: 10,
            endIndent: 60,
          ),
        ),
      ],
    );
  }
}
