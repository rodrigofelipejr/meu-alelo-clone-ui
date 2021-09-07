import '../models/models.dart';

class Constants {
  static final List<CardDataModel> cards = [
    CardDataModel(
      label: 'Refeição',
      lastNumbers: 8975,
      balance: 0.0,
      type: TypeCard.secondary,
      blocked: true,
    ),
    CardDataModel(
      label: 'Alimentação',
      lastNumbers: 2846,
      balance: 413.78,
    ),
    CardDataModel(
      label: 'Alimentação',
      lastNumbers: 7847,
      balance: 847.35,
    ),
  ];
}
