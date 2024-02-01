import 'package:flutter/material.dart';
import 'package:uikitresponsive/utils/app_styles.dart';
import 'package:uikitresponsive/widgets/range_options.dart';

class AllExpensesHeader extends StatelessWidget {
  const AllExpensesHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text('All Expenses', style: AppStyles.styleSemiBold20(context)),
        Expanded(child: SizedBox()),
        RangeOptions()
      ],
    );
  }
}
