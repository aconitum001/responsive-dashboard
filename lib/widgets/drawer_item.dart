import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem(
      {super.key, required this.drawerItemModel, required this.isSelected});

  final DrawerItemModel drawerItemModel;
  final bool isSelected;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        border: isSelected
            ? const Border(
                right: BorderSide(color: Colors.blue, width: 3.27),
              )
            : null,
      ),
      child: ListTile(
        leading: SvgPicture.asset(drawerItemModel.image),
        title: Text(
          drawerItemModel.title,
          style: isSelected ? AppStyles.styleBold16 : AppStyles.styleMedium16,
        ),
      ),
    );
  }
}
