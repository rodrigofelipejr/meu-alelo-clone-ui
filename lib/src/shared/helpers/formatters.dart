import 'package:intl/intl.dart';

class Formatters {
  static String formatMoney(double value, {bool prefix = true}) {
    final currency = new NumberFormat("#,##0.00", "pt_BR");
    return '${prefix ? "R\$ " : ""}${currency.format(value)}';
  }

  static String dateParsing(DateTime date) {
    var format = DateFormat('dd/MM/yyyy');
    return format.format(date);
  }
}
