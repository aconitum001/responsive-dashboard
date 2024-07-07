import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:responsive_dashboard/utils/app_assets.dart';

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
      ),
    );
  }
}
