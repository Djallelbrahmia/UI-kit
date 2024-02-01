import 'package:flutter/material.dart';
import 'package:uikitresponsive/models/drawer_item_model.dart';
import 'package:uikitresponsive/utils/app-images.dart';
import 'package:uikitresponsive/widgets/drawer_item.dart';

class DrawerItemsList extends StatefulWidget {
  DrawerItemsList({
    super.key,
  });

  @override
  State<DrawerItemsList> createState() => _DrawerItemsListState();
}

class _DrawerItemsListState extends State<DrawerItemsList> {
  int activeIndex = 0;
  final List<DrawerItemModel> items = [
    DrawerItemModel(title: "Dashboard", image: Assets.assetsImagesDashboard),
    DrawerItemModel(
        title: "My transactions", image: Assets.assetsImagesConvertCard),
    DrawerItemModel(title: "Statistics", image: Assets.assetsImagesGraph),
    DrawerItemModel(title: "Wallet Account", image: Assets.assetsImagesWallet),
    DrawerItemModel(title: "My Investments", image: Assets.assetsImagesChart2),
  ];
  @override
  Widget build(BuildContext context) {
    return SliverList.builder(
      itemCount: items.length,
      itemBuilder: (context, index) {
        return GestureDetector(
          onTap: () {
            if (activeIndex != index) {
              setState(() {
                activeIndex = index;
              });
            }
          },
          child: Padding(
            padding: const EdgeInsets.only(top: 20.0),
            child: DrawerItem(
              item: items[index],
              isActive: activeIndex == index,
            ),
          ),
        );
      },
    );
  }
}
