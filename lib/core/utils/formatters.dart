

import 'package:intl/intl.dart';

String formatDate(DateTime? date) {
  if (date == null) return '';
  return DateFormat('dd MMM yyyy').format(date);
}

String capitalize(String? text) {
  if (text == null) return '';
  if (text.isEmpty) return text;
  return text[0].toUpperCase() + text.substring(1).toLowerCase();
}