import 'package:abba_app/common/widget/my_appbar.dart';
import 'package:abba_app/common/widget/my_primay_header.dart';
import 'package:abba_app/utils/constants/colors.dart';
import 'package:abba_app/utils/constants/texts.dart';
import 'package:flutter/material.dart';

class DashboardScreen extends StatelessWidget {
  const DashboardScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            MyPrimaryHeaderContainer(
                child: Column(
              children: [
                MyAppBar(
                  title: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        MyTexts.dashboardTitle,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: MyColors.light),
                      ),
                      Text(
                        MyTexts.dashboardSubTitle,
                        style: Theme.of(context)
                            .textTheme
                            .bodyMedium!
                            .apply(color: MyColors.light),
                      )
                    ],
                  ),
                )
              ],
            ))
          ],
        ),
      ),
    );
  }
}
