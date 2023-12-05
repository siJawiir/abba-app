import 'package:flutter/material.dart';

class MyDropdown extends StatefulWidget {
  final String value;
  final List<String> options;
  final String labelText;
  final void Function(String) onChanged;

  const MyDropdown({
    required this.value,
    required this.options,
    required this.labelText,
    required this.onChanged,
    Key? key,
  }) : super(key: key);

  @override
  _MyDropdownState createState() => _MyDropdownState();
}

class _MyDropdownState extends State<MyDropdown> {
  @override
  Widget build(BuildContext context) {
    return DropdownButtonFormField(
      value: widget.value,
      items: widget.options.map((e) {
        return DropdownMenuItem<String>(
          value: e,
          child: Text(e),
        );
      }).toList(),
      onChanged: (String? val) {
        widget.onChanged(val!);
      },
      decoration: InputDecoration(
        labelText: widget.labelText,
      ),
      style: Theme.of(context).textTheme.titleMedium,
    );
  }
}
