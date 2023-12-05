import 'package:abba_app/utils/formatters/formatter.dart';
import 'package:flutter/material.dart';

import 'package:abba_app/utils/constants/colors.dart';
import 'package:abba_app/utils/constants/sizes.dart';
import 'package:abba_app/utils/constants/texts.dart';
import 'package:abba_app/utils/helpers/helper_functions.dart';

class DamagesCard extends StatefulWidget {
  const DamagesCard({Key? key}) : super(key: key);

  @override
  _DamagesCardState createState() => _DamagesCardState();
}

class _DamagesCardState extends State<DamagesCard> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    final dark = MyHelperFunctions.isDarkMode(context);

    return Card(
      elevation: 2,
      color: dark ? MyColors.darkContainer : MyColors.lightContainer,
      child: Padding(
        padding: const EdgeInsets.all(MySizes.spacingMedium),
        child: Form(
          child: Column(
            children: [
              Text(
                MyTexts.reportDamages,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: MySizes.spacingLarge,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    MyTexts.reportHouses,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: MySizes.spacingSmall,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportSlightlyDamaged,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  Text(
                    MyTexts.reportSlightlyDamagedNotes,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportMediumDamaged,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  Text(
                    MyTexts.reportMediumDamagedNotes,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportHeavyDamaged,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  Text(
                    MyTexts.reportHeavyDamagedNotes,
                    style: Theme.of(context).textTheme.labelMedium,
                  ),
                ],
              ),
              const SizedBox(
                height: MySizes.spacingMedium,
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    MyTexts.reportOtherFacilities,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: MySizes.spacingSmall,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportSchools,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportWorshipPlaces,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportGovernments,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportStreet,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportBridges,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportPublicFacilities,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportFarm,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.etc,
                    ),
                    keyboardType: TextInputType.number,
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                ],
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    MyTexts.reportEstimate,
                    style: Theme.of(context).textTheme.titleMedium,
                  ),
                  const SizedBox(
                    height: MySizes.spacingSmall,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportDamagedEstimate,
                    ),
                    keyboardType: TextInputType.number,
                    controller: MyFormatters.createCurrencyController(),
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportLossEstimate,
                    ),
                    keyboardType: TextInputType.number,
                    controller: MyFormatters.createCurrencyController(),
                  ),
                  const SizedBox(
                    height: MySizes.spacingMedium,
                  ),
                  TextFormField(
                    decoration: const InputDecoration(
                      labelText: MyTexts.reportImpactEstimate,
                    ),
                    keyboardType: TextInputType.number,
                    controller: MyFormatters.createCurrencyController(),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
