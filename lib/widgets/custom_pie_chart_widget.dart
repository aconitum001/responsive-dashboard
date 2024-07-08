import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class CustomPieChartWidget extends StatefulWidget {
  const CustomPieChartWidget({super.key});

  @override
  State<CustomPieChartWidget> createState() => _CustomPieChartWidgetState();
}

class _CustomPieChartWidgetState extends State<CustomPieChartWidget> {
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
          titlePositionPercentageOffset: activeIndex == 0 ? -2.2 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 0 ? Colors.black : Colors.white,
          ),
          radius: activeIndex == 0 ? 50 : 40,
          showTitle: true,
          value: 40,
          title: activeIndex == 0 ? "Design Service" : "40%",
          color: const Color(0xff208CC8),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? -2.2 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 1 ? Colors.black : Colors.white,
          ),
          radius: activeIndex == 1 ? 50 : 40,
          showTitle: true,
          value: 22,
          title: activeIndex == 1 ? "Design product" : "22%",
          color: const Color(0xff4EB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? -2.2 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 2 ? Colors.black : Colors.white,
          ),
          radius: activeIndex == 2 ? 50 : 40,
          showTitle: true,
          value: 20,
          title: activeIndex == 2 ? "Product royalti" : "20%",
          color: const Color(0xff064061),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? -2.2 : null,
          titleStyle: AppStyles.styleMedium16(context).copyWith(
            color: activeIndex == 3 ? Colors.black : Colors.white,
          ),
          radius: activeIndex == 3 ? 50 : 40,
          showTitle: true,
          value: 18,
          title: activeIndex == 3 ? "other" : "18%",
          color: const Color(0xffE2DECD),
        ),
      ],
    );
  }
}
