class TransactionModel {
  final String title, date, amount;
  final bool isWithdrawl;

  TransactionModel(
      {required this.title,
      required this.date,
      required this.amount,
      required this.isWithdrawl});
}
