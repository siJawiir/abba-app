import 'package:flutter/material.dart';

import 'package:abba_app/utils/constants/colors.dart';
import 'package:abba_app/utils/constants/sizes.dart';
import 'package:abba_app/utils/constants/texts.dart';
import 'package:abba_app/utils/helpers/helper_functions.dart';

class FatalitiesCard extends StatefulWidget {
  const FatalitiesCard({Key? key}) : super(key: key);

  @override
  _FatalitiesCardState createState() => _FatalitiesCardState();
}

class _FatalitiesCardState extends State<FatalitiesCard> {
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
                MyTexts.reportFatalities,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: MySizes.spacingLarge,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: MyTexts.reportDeaths,
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: MySizes.spacingMedium,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: MyTexts.reportWounds,
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: MySizes.spacingMedium,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: MyTexts.reportMissings,
                ),
                keyboardType: TextInputType.number,
              ),
              const SizedBox(
                height: MySizes.spacingMedium,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: MyTexts.reportEvacuates,
                ),
                keyboardType: TextInputType.number,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
