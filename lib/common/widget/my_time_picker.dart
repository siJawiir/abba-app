import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class MyTimePicker extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const MyTimePicker({
    Key? key,
    required this.controller,
    required this.labelText,
  }) : super(key: key);

  static Future<void> selectTime(
      BuildContext context, TextEditingController controller) async {
    TimeOfDay? picked = await showTimePicker(
      initialTime: TimeOfDay.now(),
      context: context,
    );

    if (picked != null) {
      controller.text = DateFormat.Hm()
          .format(DateTime(2023, 1, 1, picked.hour, picked.minute));
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: const Icon(Iconsax.clock),
      ),
      readOnly: true,
      onTap: () {
        selectTime(context, controller);
      },
    );
  }
}
