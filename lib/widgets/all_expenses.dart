import 'package:flutter/material.dart';
import 'package:uikitresponsive/models/all_expenses_item_model.dart';
import 'package:uikitresponsive/utils/app-images.dart';
import 'package:uikitresponsive/widgets/all_expenses_header.dart';
import 'package:uikitresponsive/widgets/all_expenses_item.dart';
import 'package:uikitresponsive/widgets/all_expenses_item_list_view.dart';
import 'package:uikitresponsive/widgets/custom_bg_container.dart';

class AllExpenses extends StatelessWidget {
  const AllExpenses({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomBackGroundContainer(
      child: Column(
        children: [
          AllExpensesHeader(),
          SizedBox(
            height: 16,
          ),
          AllExpensesItemsListView()
        ],
      ),
    );
  }
}
