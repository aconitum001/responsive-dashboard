import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class BottomNavigationListView extends StatelessWidget {
  const BottomNavigationListView({
    super.key,
  });

  static const List<DrawerItemModel> items = const [
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
    return Padding(
      padding: const EdgeInsets.only(left: 8, bottom: 48, right: 20),
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: items.length,
        physics: const NeverScrollableScrollPhysics(),
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(top: 20),
            child: DrawerItem(
              drawerItemModel: items[index],
              isSelected: false,
            ),
          );
        },
      ),
    );
  }
}
