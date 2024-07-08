import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/size_config.dart';
import 'package:responsive_dashboard/widgets/custom_pie_chart_widget.dart';
import 'package:responsive_dashboard/widgets/income_chart.dart';
import 'package:responsive_dashboard/widgets/income_details.dart';

class IncomeSectionBody extends StatelessWidget {
  const IncomeSectionBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.sizeOf(context).width;
    return width > SizeConfig.desktopBreakPoint && width < 1400
        ? const Expanded(
            child: CustomPieChartWidget(),
          )
        : const Row(
            children: [
              Expanded(
                child: PieChartWidget(),
              ),
              Expanded(
                flex: 2,
                child: IncomeDetails(),
              ),
            ],
          );
  }
}
