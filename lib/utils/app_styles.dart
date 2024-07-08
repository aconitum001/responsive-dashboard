import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';

abstract class AppStyles {
  static TextStyle styleRegular16(context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: const Color(0xFF064060),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleMedium16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: const Color(0xFF064060),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleSemiBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: const Color(0xFF064060),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleBold16(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 16),
      color: const Color(0xFF4EB7F2),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w700,
    );
  }

  static TextStyle styleSemiBold20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: const Color(0xFF064060),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleMedium20(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 20),
      color: const Color(0xFFFFFFFF),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w500,
    );
  }

  static TextStyle styleRegular12(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 12),
      color: const Color(0xFFAAAAAA),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold24(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 24),
      color: const Color(0xFF4EB7F2),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }

  static TextStyle styleRegular14(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 14),
      color: const Color(0xFFAAAAAA),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w400,
    );
  }

  static TextStyle styleSemiBold18(BuildContext context) {
    return TextStyle(
      fontSize: getResponsiveFontSize(context, fontSize: 18),
      color: const Color(0xFF4EB7F2),
      fontFamily: 'Montserrat',
      fontWeight: FontWeight.w600,
    );
  }
}

double getResponsiveFontSize(context, {required double fontSize}) {
  double scaleFactore = getScaleFactor(context);
  double responsiveFontSize = scaleFactore * fontSize;

  double upperLimit = fontSize * 1.2;
  double lowerLimit = fontSize * 0.8;

  responsiveFontSize = responsiveFontSize.clamp(lowerLimit, upperLimit);

  return responsiveFontSize;
}

double getScaleFactor(BuildContext context) {
  // var dispatcher = PlatformDispatcher.instance;
  // var physicalWidth = dispatcher.views.first.physicalSize.width;
  // var devicePixelRatio = dispatcher.views.first.devicePixelRatio;
  // var width = physicalWidth / devicePixelRatio;

  double width = MediaQuery.sizeOf(context).width;

  if (width < SizeConfig.tabletLayout) {
    return width / 800;
  } else if (width < SizeConfig.desktopBreakPoint) {
    return width / 1300;
  } else {
    return width / 1700;
  }
}
