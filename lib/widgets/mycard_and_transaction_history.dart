import 'package:flutter/material.dart';
import 'package:uikitresponsive/widgets/Mycard_section.dart';
import 'package:uikitresponsive/widgets/custom_bg_container.dart';
import 'package:uikitresponsive/widgets/transaction_history.dart';

class MyCardAndTransactionHistorySection extends StatelessWidget {
  const MyCardAndTransactionHistorySection({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
        child: Column(
      children: [
        MyCardsSection(),
        Divider(
          height: 40,
          color: Color(0xFFF1F1F1),
        ),
        TransactionHistory()
      ],
    ));
  }
}
