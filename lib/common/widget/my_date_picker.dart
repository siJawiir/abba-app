import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:intl/intl.dart';

class MyDatePicker extends StatelessWidget {
  final TextEditingController controller;
  final String labelText;

  const MyDatePicker({
    Key? key,
    required this.controller,
    required this.labelText,
  }) : super(key: key);

  static Future<void> selectDate(
      BuildContext context, TextEditingController controller) async {
    DateTime? picked = await showDatePicker(
      context: context,
      initialDate: DateTime.now(),
      firstDate: DateTime(2000),
      lastDate: DateTime(2100),
    );

    if (picked != null) {
      controller.text = DateFormat('dd-MM-yyyy').format(picked);
    }
  }

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      decoration: InputDecoration(
        labelText: labelText,
        suffixIcon: const Icon(Iconsax.calendar_2),
      ),
      readOnly: true,
      onTap: () {
        selectDate(context, controller);
      },
    );
  }
}
