import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/drawer_item.dart';

class DrawerItemsListView extends StatefulWidget {
  const DrawerItemsListView({
    super.key,
  });

  @override
  State<DrawerItemsListView> createState() => _DrawerItemsListViewState();
}

class _DrawerItemsListViewState extends State<DrawerItemsListView> {
  final List<DrawerItemModel> items = const [
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
  ];
  int selectedIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: const EdgeInsets.only(left: 8, right: 20),
      sliver: SliverList.builder(
        itemCount: items.length,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 20,
            ),
            child: GestureDetector(
              onTap: () {
                if (selectedIndex != index) {
                  setState(() {
                    selectedIndex = index;
                  });
                }
              },
              child: DrawerItem(
                drawerItemModel: items[index],
                isSelected: index == selectedIndex ? true : false,
              ),
            ),
          );
        },
      ),
    );
  }
}
