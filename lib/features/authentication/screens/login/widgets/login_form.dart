import 'package:abba_app/features/reporting/screens/report/report.dart';
import 'package:abba_app/navigation_menu.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:iconsax/iconsax.dart';

import '../../../../../utils/constants/sizes.dart';
import '../../../../../utils/constants/texts.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Form(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: MySizes.spacingMedium),
        child: Column(
          children: [
            /// Email Field
            TextFormField(
              decoration: const InputDecoration(
                  prefixIcon: Icon(Iconsax.direct_right),
                  labelText: MyTexts.username),
            ),
            const SizedBox(
              height: MySizes.spacingMedium,
            ),

            /// Password Field
            TextFormField(
              obscureText: true,
              decoration: const InputDecoration(
                prefixIcon: Icon(Iconsax.password_check),
                labelText: MyTexts.password,
                suffixIcon: Icon(Iconsax.eye_slash),
              ),
            ),
            const SizedBox(
              height: MySizes.spacingMedium / 2,
            ),

            /// Remember Me & Forgot Password
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                ///Remember Me Field
                Row(
                  children: [
                    Checkbox(value: true, onChanged: (value) {}),
                    const Text(MyTexts.rememberMe)
                  ],
                ),

                ///Forgot Password
                TextButton(
                    onPressed: () {}, child: const Text(MyTexts.forgotPassword))
              ],
            ),
            const SizedBox(
              height: MySizes.spacingMedium,
            ),

            /// Sign In Button
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => Get.to(() => const ReportScreen()),
                child: const Text(MyTexts.signIn),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
