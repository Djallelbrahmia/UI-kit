import 'package:flutter/material.dart';
import 'package:uikitresponsive/models/transaction_model.dart';
import 'package:uikitresponsive/utils/app_styles.dart';

class TransactionItem extends StatelessWidget {
  const TransactionItem({super.key, required this.model});
  final TransactionModel model;
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(12),
      ),
      elevation: 0,
      color: Color(0xFFFAFAFA),
      child: ListTile(
        title: Text(
          model.title,
          style: AppStyles.styleBold16(context).copyWith(
            color: Color(0xFF064060),
          ),
        ),
        subtitle: Text(model.date,
            style: AppStyles.styleRegular16(context)
                .copyWith(color: Color(0xFFAAAAAA))),
        trailing: Text(
          model.amount,
          style: AppStyles.styleBold16(context).copyWith(
            color: model.isWithdrawl ? Color(0xFFF3735E) : Color(0xFF7CD87A),
          ),
        ),
      ),
    );
  }
}
