import 'package:flutter/material.dart';
import 'package:uikitresponsive/models/drawer_item_model.dart';
import 'package:uikitresponsive/models/user_info_model.dart';
import 'package:uikitresponsive/utils/app-images.dart';
import 'package:uikitresponsive/widgets/active_and_inactive_item.dart';
import 'package:uikitresponsive/widgets/drawer_item.dart';
import 'package:uikitresponsive/widgets/drawer_items_listView.dart';
import 'package:uikitresponsive/widgets/user_info_listTile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});
  static List<DrawerItemModel> items = [
    DrawerItemModel(title: "Dashboard", image: Assets.assetsImagesDashboard),
    DrawerItemModel(
        title: "My transactions", image: Assets.assetsImagesConvertCard),
    DrawerItemModel(title: "Statistics", image: Assets.assetsImagesGraph),
    DrawerItemModel(title: "Wallet Account", image: Assets.assetsImagesWallet),
    DrawerItemModel(title: "My Investments", image: Assets.assetsImagesChart2),
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * 0.7,
      color: Colors.white,
      child: CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              model: UserInfoModel(
                  image: Assets.assetsImagesAvatar,
                  title: "Djallel Brahmia",
                  subTitle: "dbrahmia03@gmail.com"),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsList(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Column(
              children: [
                Expanded(
                  child: SizedBox(
                    height: 20,
                  ),
                ),
                InActiveDrawerItem(
                    item: DrawerItemModel(
                        title: "Setting system",
                        image: Assets.assetsImagesSetting)),
                InActiveDrawerItem(
                    item: DrawerItemModel(
                        title: "Logout", image: Assets.assetsImagesLogout)),
                SizedBox(
                  height: 48,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
