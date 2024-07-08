import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/models/latest_transatction_model.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class UserInfoListTile extends StatelessWidget {
  const UserInfoListTile({
    super.key,
    required this.userInfoModel,
    this.padding,
  });

  final UserInfoModel userInfoModel;
  final EdgeInsetsGeometry? padding;

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: padding ??
          const EdgeInsets.only(left: 27, right: 20, top: 20, bottom: 20),
      color: const Color(0xffFAFAFA),
      elevation: 0,
      child: Center(
        child: ListTile(
          leading: SvgPicture.asset(userInfoModel.image),
          title: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              userInfoModel.title,
              style: AppStyles.styleSemiBold16(context),
            ),
          ),
          subtitle: FittedBox(
            fit: BoxFit.scaleDown,
            alignment: Alignment.centerLeft,
            child: Text(
              userInfoModel.subtitle,
              style: AppStyles.styleRegular12(context),
            ),
          ),
        ),
      ),
    );
  }
}
