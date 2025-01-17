import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/models/latest_transatction_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';
import 'package:responsive_dashboard/widgets/drawer_items_list_view.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.sizeOf(context).width * .7,
      color: Colors.white,
      child: const CustomScrollView(
        slivers: [
          SliverToBoxAdapter(
            child: UserInfoListTile(
              userInfoModel: UserInfoModel(
                image: Assets.assetsAvatar3,
                title: "Lekan Okeowo",
                subtitle: "demo@gmail.com",
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: SizedBox(
              height: 8,
            ),
          ),
          DrawerItemsListView(),
          SliverFillRemaining(
            hasScrollBody: false,
            child: Padding(
              padding: EdgeInsets.only(left: 8, bottom: 48),
              child: Column(
                children: [
                  Expanded(
                    child: SizedBox(
                      height: 20,
                    ),
                  ),
                  DrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: "Settings System",
                      image: Assets.assetsSetting2,
                    ),
                    isSelected: false,
                  ),
                  SizedBox(
                    height: 20,
                  ),
                  DrawerItem(
                    drawerItemModel: DrawerItemModel(
                      title: "Logout account",
                      image: Assets.assetsLogout,
                    ),
                    isSelected: false,
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
