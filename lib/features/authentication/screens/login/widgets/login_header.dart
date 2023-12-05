import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Image(
          image: AssetImage(MyImages.abba),
          height: 120,
        ),
        Text(
          MyTexts.loginTitle,
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        const SizedBox(
          height: MySizes.sm,
        ),
        Text(
          MyTexts.loginSubTitle,
          style: Theme.of(context).textTheme.bodyMedium,
        ),
        const SizedBox(
          height: MySizes.spacingMedium,
        ),
      ],
    );
  }
}
