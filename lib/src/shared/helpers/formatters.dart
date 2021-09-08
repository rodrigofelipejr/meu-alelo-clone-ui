import 'package:intl/intl.dart';

class Formatters {
  static String formatMoney(double value, {bool prefix = true}) {
    final currency = new NumberFormat("#,##0.00", "pt_BR");
    return '${prefix ? "R\$ " : ""}${currency.format(value)}';
  }

  static String dateDayMonthHourMinute(DateTime date) {
    var dayMonth = DateFormat('dd/MM');
    var hourMinute = DateFormat('HH/mm');
    return '${dayMonth.format(date)} às ${hourMinute.format(date)}h';
  }

  static String dateDayMonth(DateTime date) {
    var dayMonth = DateFormat('dd/MM');
    return dayMonth.format(date);
  }
}
