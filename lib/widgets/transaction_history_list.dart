import 'package:flutter/material.dart';
import 'package:uikitresponsive/models/transaction_model.dart';
import 'package:uikitresponsive/widgets/transaction_item.dart';

class TransactionHistoryListView extends StatelessWidget {
  const TransactionHistoryListView({super.key});
  static final items = [
    TransactionModel(
        title: "Cash Withdrawal",
        date: "13 Apr, 2022 ",
        amount: "\$20,129",
        isWithdrawl: true),
    TransactionModel(
        title: "Landing Page project",
        date: "13 Apr, 2022 at 3:30 PM",
        amount: "\$2,000",
        isWithdrawl: false),
    TransactionModel(
        title: "Juni Mobile App project",
        date: "13 Apr, 2022 at 3:30 PM",
        amount: "\$2,000",
        isWithdrawl: false),
  ];
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        itemBuilder: (context, index) {
          return TransactionItem(model: items[index]);
        });
  }
}
