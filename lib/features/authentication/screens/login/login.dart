import 'package:flutter/material.dart';

import 'package:abba_app/common/styles/spacing_style.dart';
import 'package:abba_app/features/authentication/screens/login/widgets/login_divider.dart';
import 'package:abba_app/features/authentication/screens/login/widgets/login_footer.dart';
import 'package:abba_app/features/authentication/screens/login/widgets/login_form.dart';
import 'package:abba_app/features/authentication/screens/login/widgets/login_header.dart';
import 'package:abba_app/utils/constants/sizes.dart';
import 'package:abba_app/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: MySpacingStyle.paddingWithAppBarHeight,
          child: Column(
            children: [
              const LoginHeader(),
              const LoginForm(),
              const SizedBox(
                height: MySizes.spacingSmall,
              ),
              LoginDivider(dark: dark),
              const SizedBox(
                height: MySizes.spacingSmall,
              ),
              const LoginFooter(),
            ],
          ),
        ),
      ),
    );
  }
}
