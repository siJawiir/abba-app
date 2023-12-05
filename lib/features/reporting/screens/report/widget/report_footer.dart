import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:abba_app/utils/constants/colors.dart';
import 'package:abba_app/utils/constants/sizes.dart';
import 'package:abba_app/utils/constants/texts.dart';
import 'package:abba_app/utils/helpers/helper_functions.dart';

class ReportFooter extends StatefulWidget {
  const ReportFooter({Key? key}) : super(key: key);

  @override
  _ReportFooterState createState() => _ReportFooterState();
}

class _ReportFooterState extends State<ReportFooter> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Row(
      children: [
        Expanded(
          child: OutlinedButton(
            onPressed: () => Get.to(() => ""),
            style: OutlinedButton.styleFrom(
              foregroundColor: MyColors.primary,
              side: const BorderSide(width: 2.0, color: MyColors.primary),
              textStyle: const TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: MySizes.fontSmall,
              ),
            ),
            child: const Text(MyTexts.draft),
          ),
        ),
        const SizedBox(
          width: MySizes.spacingMedium,
        ),
        Expanded(
          flex: 2,
          child: ElevatedButton(
            onPressed: () => Get.to(() => ""),
            child: const Text(MyTexts.send),
          ),
        ),
      ],
    );
  }
}
