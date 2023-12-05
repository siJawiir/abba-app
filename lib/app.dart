import 'package:abba_app/features/authentication/screens/onboarding/onboarding.dart';
import 'package:flutter/material.dart';
import 'package:abba_app/utils/theme/theme.dart';
import 'package:get/get.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      themeMode: ThemeMode.system,
      theme: MyAppTheme.lightTheme,
      darkTheme: MyAppTheme.darkTheme,
      home: const OnBoardingScreen(),
    );
  }
}
