import 'package:flutter/material.dart';
import 'package:uikitresponsive/models/user_info_model.dart';
import 'package:uikitresponsive/utils/app-images.dart';
import 'package:uikitresponsive/widgets/user_info_listTile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});
  static const items = [
    UserInfoModel(
        image: Assets.assetsImagesAvatar,
        title: "Djallel Brahmia",
        subTitle: "D_brahmia@ensta.edu.dz"),
    UserInfoModel(
        image: Assets.assetsImagesAvatar,
        title: "Djallel Brahmia",
        subTitle: "D_brahmia@ensta.edu.dz"),
    UserInfoModel(
        image: Assets.assetsImagesAvatar,
        title: "Djallel Brahmia",
        subTitle: "D_brahmia@ensta.edu.dz"),
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items
            .map((e) => IntrinsicWidth(
                  child: UserInfoListTile(
                    model: e,
                  ),
                ))
            .toList(),
      ),
    );
  }
}
