import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class PieChartWidget extends StatefulWidget {
  const PieChartWidget({super.key});

  @override
  State<PieChartWidget> createState() => _PieChartWidgetState();
}

class _PieChartWidgetState extends State<PieChartWidget> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(
        getChartData(),
      ),
    );
  }

  PieChartData getChartData() {
    return PieChartData(
      pieTouchData: PieTouchData(
        enabled: true,
        touchCallback: (p0, pieTouchResponse) {
          activeIndex =
              pieTouchResponse?.touchedSection?.touchedSectionIndex ?? -1;
          setState(() {});
        },
      ),
      sectionsSpace: 0,
      sections: [
        PieChartSectionData(
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: Colors.white,
          ),
          radius: activeIndex == 0 ? 40 : 30,
          showTitle: activeIndex == 0 ? true : false,
          value: 40,
          title: "40%",
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: Colors.white,
          ),
          radius: activeIndex == 1 ? 40 : 30,
          showTitle: activeIndex == 1 ? true : false,
          value: 22,
          title: "22%",
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: Colors.white,
          ),
          radius: activeIndex == 2 ? 40 : 30,
          showTitle: activeIndex == 2 ? true : false,
          value: 20,
          title: "20%",
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: Colors.white,
          ),
          radius: activeIndex == 3 ? 40 : 30,
          showTitle: activeIndex == 3 ? true : false,
          value: 18,
          title: "18%",
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
