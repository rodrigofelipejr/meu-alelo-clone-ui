import 'package:alelo/src/shared/helpers/formatters.dart';

class HomeController {
  final String lastUpdate = Formatters.dateDayMonthHourMinute(DateTime.now());
}
