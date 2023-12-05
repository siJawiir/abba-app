import 'package:flutter/material.dart';

import '../../../../../utils/constants/image_strings.dart';
import '../../../../../utils/constants/texts.dart';

class LoginFooter extends StatelessWidget {
  const LoginFooter({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        const Image(
          image: AssetImage(MyImages.bpbd),
          height: 40,
        ),
        const SizedBox(width: 8),
        Text(
          MyTexts.bpbd,
          style: Theme.of(context).textTheme.bodySmall,
        ),
      ],
    );
  }
}
