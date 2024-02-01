import 'package:flutter/material.dart';
import 'package:uikitresponsive/utils/app_styles.dart';
import 'package:uikitresponsive/widgets/transaction_history_list.dart';

class TransactionHistory extends StatelessWidget {
  const TransactionHistory({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        TransictionHistoryHeader(),
        SizedBox(
          height: 20,
        ),
        Text('13 April 2022',
            style: AppStyles.styleRegular16(context)
                .copyWith(color: Color(0xFFAAAAAA))),
        SizedBox(
          height: 16,
        ),
        TransactionHistoryListView()
      ],
    );
  }
}

class TransictionHistoryHeader extends StatelessWidget {
  const TransictionHistoryHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text('Transaction History', style: AppStyles.styleSemiBold20(context)),
        Text('See all',
            style: AppStyles.styleMedium16(context)
                .copyWith(color: Color(0xFF4EB7F2)))
      ],
    );
  }
}
