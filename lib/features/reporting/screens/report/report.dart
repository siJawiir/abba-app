import 'package:abba_app/features/reporting/screens/report/widget/report_damages.dart';
import 'package:abba_app/features/reporting/screens/report/widget/report_fatalities.dart';
import 'package:abba_app/features/reporting/screens/report/widget/report_footer.dart';
import 'package:abba_app/features/reporting/screens/report/widget/report_others.dart';
import 'package:flutter/material.dart';

import 'package:abba_app/features/reporting/screens/report/widget/report_disaster.dart';
import '../../../../utils/constants/sizes.dart';

class ReportScreen extends StatefulWidget {
  const ReportScreen({Key? key}) : super(key: key);

  @override
  _ReportScreenState createState() => _ReportScreenState();
}

class _ReportScreenState extends State<ReportScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: const SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(MySizes.spacingMedium),
            child: Column(
              children: [
                DisasterCard(),
                SizedBox(
                  height: MySizes.spacingMedium,
                ),
                FatalitiesCard(),
                SizedBox(
                  height: MySizes.spacingMedium,
                ),
                DamagesCard(),
                SizedBox(
                  height: MySizes.spacingMedium,
                ),
                OthersCard(),
                SizedBox(
                  height: MySizes.spacingMedium,
                ),
                ReportFooter()
              ],
            )),
      ),
    );
  }
}
