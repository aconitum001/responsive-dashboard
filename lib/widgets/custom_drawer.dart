import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/widgets/user_info_list_tile.dart';

class CustomDrawer extends StatelessWidget {
  const CustomDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: const Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          UserInfoListTile(
            title: "Lekan Okeowo",
            subTitle: "demo@gmail.com",
            image: Assets.assetsAvatar3,
          ),
          SizedBox(
            height: 8,
          ),
        ],
      ),
    );
  }
}
