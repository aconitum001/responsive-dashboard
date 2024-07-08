import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:responsive_dashboard/models/drawer_item_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DrawerItem extends StatelessWidget {
  const DrawerItem({
    super.key,
    required this.drawerItemModel,
    required this.isSelected,
  });

  final DrawerItemModel drawerItemModel;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return AnimatedSwitcher(
      duration: const Duration(milliseconds: 300),
      transitionBuilder: (Widget child, Animation<double> animation) {
        return FadeTransition(
          opacity: animation,
          child: child,
        );
      },
      child: Container(
        key: ValueKey(isSelected), // Important for AnimatedSwitcher
        decoration: BoxDecoration(
          border: isSelected
              ? const Border(
                  right: BorderSide(color: Colors.blue, width: 3.27),
                )
              : null,
        ),
        child: ListTile(
          leading: SvgPicture.asset(drawerItemModel.image),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              drawerItemModel.title,
              style: isSelected
                  ? AppStyles.styleBold16(context)
                  : AppStyles.styleMedium16(context),
            ),
          ),
        ),
      ),
    );
  }
}
