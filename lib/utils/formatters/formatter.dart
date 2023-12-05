import 'package:flutter/services.dart';
import 'package:flutter_masked_text2/flutter_masked_text2.dart';
import 'package:intl/intl.dart';

class MyFormatters {
  static String formatDate(DateTime? date) {
    date ??= DateTime.now();
    return DateFormat('dd-MMM-yyyy').format(date);
  }

  static MoneyMaskedTextController createCurrencyController() {
    return MoneyMaskedTextController(
        leftSymbol: 'Rp ', precision: 0, decimalSeparator: '');
  }
}
