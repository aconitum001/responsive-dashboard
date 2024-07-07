import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class MyCard extends StatelessWidget {
  const MyCard({super.key});

  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 420 / 215,
      child: Container(
        decoration: BoxDecoration(
          color: const Color(0xff5FBEF3),
          borderRadius: BorderRadius.circular(12),
          image: const DecorationImage(
            image: AssetImage(
              Assets.assetsCardBackground2,
            ),
            fit: BoxFit.fill,
          ),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            ListTile(
              contentPadding: const EdgeInsets.only(
                left: 31,
                right: 42,
                top: 10,
              ),
              minVerticalPadding: 0,
              title: Text(
                "Name card",
                style: AppStyles.styleRegular16.copyWith(
                  color: const Color(0xffFFFFFF).withOpacity(0.7),
                ),
              ),
              subtitle: const Text(
                "Syah Bandi",
                style: AppStyles.styleMedium20,
              ),
              trailing: SvgPicture.asset(Assets.assetsGallery),
            ),
            const Expanded(
              child: SizedBox(),
            ),
            Padding(
              padding: const EdgeInsets.only(right: 24),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text(
                    "0918 8124 0042 8129",
                    style: AppStyles.styleSemiBold24.copyWith(
                      color: Colors.white,
                    ),
                  ),
                  Text(
                    "12/20 - 124",
                    style: AppStyles.styleRegular16.copyWith(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}
