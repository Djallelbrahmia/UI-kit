import 'package:flutter/material.dart';
import 'package:uikitresponsive/widgets/Mycard_section.dart';
import 'package:uikitresponsive/widgets/all_expenses.dart';
import 'package:uikitresponsive/widgets/all_expenses_and_invoice_section.dart';
import 'package:uikitresponsive/widgets/cards_page_view.dart';
import 'package:uikitresponsive/widgets/custom_drawer.dart';
import 'package:uikitresponsive/widgets/income_section.dart';
import 'package:uikitresponsive/widgets/my_card.dart';
import 'package:uikitresponsive/widgets/mycard_and_transaction_history.dart';
import 'package:uikitresponsive/widgets/quick_invoice.dart';
import 'package:uikitresponsive/widgets/transaction_history.dart';

class DesktopLayout extends StatelessWidget {
  const DesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 4,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: AlLExpensesAndInvoiceSection(),
            )),
        SizedBox(
          width: 24,
        ),
        Expanded(
            flex: 2,
            child: SingleChildScrollView(
              child: Column(
                children: [
                  SizedBox(
                    height: 40,
                  ),
                  MyCardAndTransactionHistorySection(),
                  SizedBox(
                    height: 24,
                  ),
                  IncomeSection()
                ],
              ),
            ))
      ],
    );
  }
}
