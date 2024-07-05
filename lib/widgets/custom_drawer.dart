import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  static const List<DrawerItemModel> items = [
    DrawerItemModel(
      title: "Dashboard",
      image: Assets.assetsDashboardIcon,
    ),
    DrawerItemModel(
      title: "My Transaction",
      image: Assets.assetsTransactionIcon,
    ),
    DrawerItemModel(
      title: "Statistics",
      image: Assets.assetsStatisticsIcon,
    ),
    DrawerItemModel(
      title: "Wallet Account",
      image: Assets.assetsWalletIcon,
    ),
    DrawerItemModel(
      title: "My Investments",
      image: Assets.assetsInvestmentsIcon,
    ),
    DrawerItemModel(
      title: "Setting system",
      image: Assets.assetsSetting2,
    ),
    DrawerItemModel(
      title: "Logout account",
      image: Assets.assetsLogout,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const UserInfoListTile(
            title: "Lekan Okeowo",
            subTitle: "demo@gmail.com",
            image: Assets.assetsAvatar3,
          ),
          const SizedBox(
            height: 8,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 20),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length - 2,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(
                    top: 20,
                  ),
                  child: DrawerItem(
                    drawerItemModel: items[index],
                    isSelected: index == 0 ? true : false,
                  ),
                );
              },
            ),
          ),
          const Spacer(
            flex: 1,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, bottom: 48, right: 20),
            child: ListView.builder(
              shrinkWrap: true,
              itemCount: items.length - 5,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.only(top: 20),
                  child: DrawerItem(
                    drawerItemModel: items[index + 5],
                    isSelected: false,
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
