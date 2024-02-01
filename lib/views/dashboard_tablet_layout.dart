import 'package:flutter/material.dart';
import 'package:uikitresponsive/views/Dashboard_mobile_layout.dart';
import 'package:uikitresponsive/widgets/all_expenses_and_invoice_section.dart';
import 'package:uikitresponsive/widgets/custom_drawer.dart';
import 'package:uikitresponsive/widgets/mycard_and_transaction_history.dart';

class DashBoardTabletLayout extends StatefulWidget {
  const DashBoardTabletLayout({super.key});

  @override
  State<DashBoardTabletLayout> createState() => _DashBoardTabletLayoutState();
}

class _DashBoardTabletLayoutState extends State<DashBoardTabletLayout> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(flex: 1, child: CustomDrawer()),
        SizedBox(
          width: 32,
        ),
        Expanded(
            flex: 3,
            child: Padding(
              padding: const EdgeInsets.only(top: 40.0),
              child: DashboardMobileLayout(),
            )),
        SizedBox(
          width: 32,
        ),
      ],
    );
  }
}
