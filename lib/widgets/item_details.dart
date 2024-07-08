import 'package:flutter/material.dart';
import 'package:responsive_dashboard/models/item_details_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class ItemDetails extends StatelessWidget {
  const ItemDetails({super.key, required this.itemDetailsModel});

  final ItemDetailsModel itemDetailsModel;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: Container(
        width: 12,
        height: 12,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: itemDetailsModel.color,
        ),
      ),
      title: Text(
        itemDetailsModel.title,
        style: AppStyles.styleMedium16(context),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
      trailing: Text(
        itemDetailsModel.value,
        style: AppStyles.styleMedium16(context),
        maxLines: 1,
        overflow: TextOverflow.ellipsis,
      ),
    );
  }
}
