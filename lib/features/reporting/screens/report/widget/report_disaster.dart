import 'package:flutter/material.dart';

import 'package:abba_app/common/widget/my_date_picker.dart';
import 'package:abba_app/common/widget/my_time_picker.dart';
import 'package:abba_app/features/reporting/screens/report/widget/report_coordinate.dart';
import 'package:abba_app/common/widget/my_dropdown.dart';
import 'package:abba_app/utils/constants/colors.dart';
import 'package:abba_app/utils/constants/sizes.dart';
import 'package:abba_app/utils/constants/texts.dart';
import 'package:abba_app/utils/helpers/helper_functions.dart';

class DisasterCard extends StatefulWidget {
  const DisasterCard({Key? key}) : super(key: key);

  @override
  _DisasterCardState createState() => _DisasterCardState();
}

class _DisasterCardState extends State<DisasterCard> {
  late String _selectedValue;
  final _selectedOptions = ['Option 1', 'Option 2', 'Option 3', 'Option 4'];
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _timeController = TextEditingController();

  @override
  void initState() {
    super.initState();
    _selectedValue = _selectedOptions[0];
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
                MyTexts.reportDisaster,
                style: Theme.of(context).textTheme.titleLarge,
              ),
              const SizedBox(
                height: MySizes.spacingLarge,
              ),
              MyDropdown(
                value: _selectedValue,
                options: _selectedOptions,
                labelText: MyTexts.reportType,
                onChanged: (String? val) {
                  setState(() {
                    _selectedValue = val!;
                  });
                },
              ),
              const SizedBox(
                height: MySizes.spacingMedium,
              ),
              TextFormField(
                decoration: const InputDecoration(
                  labelText: MyTexts.reportAddress,
                  alignLabelWithHint: true,
                ),
                keyboardType: TextInputType.multiline,
                maxLines: 3,
              ),
              const SizedBox(
                height: MySizes.spacingMedium,
              ),
              MyDropdown(
                value: _selectedValue,
                options: _selectedOptions,
                labelText: MyTexts.reportSubDistrict,
                onChanged: (String? val) {
                  setState(() {
                    _selectedValue = val!;
                  });
                },
              ),
              const SizedBox(
                height: MySizes.spacingMedium,
              ),
              MyDropdown(
                value: _selectedValue,
                options: _selectedOptions,
                labelText: MyTexts.reportVillage,
                onChanged: (String? val) {
                  setState(() {
                    _selectedValue = val!;
                  });
                },
              ),
              const SizedBox(
                height: MySizes.spacingMedium,
              ),
              const ReportCoordinate(),
              const SizedBox(
                height: MySizes.spacingMedium,
              ),
              MyDatePicker(
                controller: _dateController,
                labelText: MyTexts.reportDate,
              ),
              const SizedBox(height: MySizes.spacingMedium),
              MyTimePicker(
                controller: _timeController,
                labelText: MyTexts.reportTime,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
