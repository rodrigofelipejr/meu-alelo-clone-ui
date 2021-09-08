import 'models.dart';

enum TypeCard { primary, secondary }

class CardDataModel {
  final String label;
  final int lastNumbers;
  final double balance;
  final TypeCard type;
  final bool blocked;
  final List<TransactionModel>? transactions;

  CardDataModel({
    required this.label,
    required this.lastNumbers,
    required this.balance,
    this.blocked = false,
    this.type = TypeCard.primary,
    this.transactions,
  });
}
