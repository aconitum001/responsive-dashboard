import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/latest_transatction_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class LatestTransactionListView extends StatelessWidget {
  const LatestTransactionListView({super.key});

  static const List<UserInfoModel> items = [
    UserInfoModel(
      image: Assets.assetsAvatar1,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    ),
    UserInfoModel(
      image: Assets.assetsAvatar2,
      title: "Josua Nunito",
      subtitle: "Josh Nunito@gmail.com",
    ),
    UserInfoModel(
      image: Assets.assetsAvatar3,
      title: "Skander Jenhani",
      subtitle: "skandern0000@gmail.com",
    ),
    UserInfoModel(
      image: Assets.assetsAvatar2,
      title: "Hodhod Tabben",
      subtitle: "hidaya2004@gmail.com",
    ),
    UserInfoModel(
      image: Assets.assetsAvatar1,
      title: "Madrani Andi",
      subtitle: "Madraniadi20@gmail",
    )
  ];
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: items.asMap().entries.map(
          (e) {
            int index = e.key;
            var item = e.value;
            return IntrinsicWidth(
              child: Padding(
                padding: EdgeInsets.only(left: index != 0 ? 10 : 0),
                child: UserInfoListTile(
                  userInfoModel: item,
                  padding: EdgeInsets.zero,
                ),
              ),
            );
          },
        ).toList(),
      ),
    );
  }
}
