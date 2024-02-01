import 'package:flutter/material.dart';
import 'package:uikitresponsive/models/all_expenses_item_model.dart';
import 'package:uikitresponsive/utils/app-images.dart';
import 'package:uikitresponsive/widgets/all_expenses_item.dart';

class AllExpensesItemsListView extends StatefulWidget {
  const AllExpensesItemsListView({super.key});
  static const items = [
    AllExpensesItemModel(
        image: Assets.assetsImagesMoneys,
        title: "Balance",
        date: "April 2022",
        price: r"$20.00"),
    AllExpensesItemModel(
        image: Assets.assetsImagesCardReceive,
        title: "Income",
        date: "April 2022",
        price: r"$20.10"),
    AllExpensesItemModel(
        image: Assets.assetsImagesCardSend,
        title: "Expenses",
        date: "April 2022",
        price: r"$20.13"),
  ];

  @override
  State<AllExpensesItemsListView> createState() =>
      _AllExpensesItemsListViewState();
}

class _AllExpensesItemsListViewState extends State<AllExpensesItemsListView> {
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: AllExpensesItemsListView.items
          .asMap()
          .entries
          .map((e) => Expanded(
                child: GestureDetector(
                  onTap: () {
                    updateIndex(e.key);
                  },
                  child: Padding(
                    padding: e.key == 1
                        ? const EdgeInsets.all(8.0)
                        : EdgeInsets.zero,
                    child: AllExpensesItem(
                      itemModel: e.value,
                      isSelected: e.key == selectedIndex,
                    ),
                  ),
                ),
              ))
          .toList(),
    );
  }

  void updateIndex(int key) {
    setState(() {
      selectedIndex = key;
    });
  }
}
