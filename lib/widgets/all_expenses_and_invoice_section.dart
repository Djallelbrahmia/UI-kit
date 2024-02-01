import 'package:flutter/material.dart';
import 'package:uikitresponsive/widgets/all_expenses.dart';
import 'package:uikitresponsive/widgets/quick_invoice.dart';

class AlLExpensesAndInvoiceSection extends StatelessWidget {
  const AlLExpensesAndInvoiceSection({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          AllExpenses(),
          SizedBox(
            height: 24,
          ),
          QuickInvoice()
        ],
      ),
    );
  }
}
