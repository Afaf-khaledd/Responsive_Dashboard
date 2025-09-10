class TransactionHistoryModel {
  final String title;
  final String amount;
  final String date;
  final bool isIncome;

  const TransactionHistoryModel({required this.title, required this.amount, required this.date, required this.isIncome});
}