import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';
import 'package:responsive_dashboard/utils/app_styles.dart';

class DetailedIncomeChart extends StatefulWidget {
  const DetailedIncomeChart({super.key});

  @override
  State<DetailedIncomeChart> createState() => _DetailedIncomeChartState();
}

class _DetailedIncomeChartState extends State<DetailedIncomeChart> {
  int activeIndex = -1;
  @override
  Widget build(BuildContext context) {
    return AspectRatio(
      aspectRatio: 1,
      child: PieChart(getChartData()),
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
          value: 40,
          titlePositionPercentageOffset: activeIndex == 0 ? 1.5 : null,
          title: activeIndex != 0 ? "40%" : "Design service",
          titleStyle: AppStyles.styleMedium20(context).copyWith(color: activeIndex == 0 ? Colors.black : null),
          radius: activeIndex == 0 ? 60 : 50,
          color: const Color(0xFF208BC7),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 1 ? 1.7 : null,
          value: 25,
          title: activeIndex != 1 ? "25%" : "Design product",
          titleStyle: AppStyles.styleMedium20(context).copyWith(color: activeIndex == 1 ? Colors.black : null),
          radius: activeIndex == 1 ? 60 : 50,
          color: const Color(0xFF4DB7F2),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 2 ? 1.5 : null,
          value: 20,
          title: activeIndex != 2 ? "20%" : "Product royalti",
          titleStyle: AppStyles.styleMedium20(context).copyWith(color: activeIndex == 2 ? Colors.black : null),
          radius: activeIndex == 2 ? 60 : 50,
          color: const Color(0xFF064060),
        ),
        PieChartSectionData(
          titlePositionPercentageOffset: activeIndex == 3 ? 1.5 : null,
          value: 22,
          title: activeIndex != 3 ? "22%" : "Other",
          titleStyle: AppStyles.styleMedium20(context).copyWith(color: activeIndex == 3 ? Colors.black : null),
          radius: activeIndex == 3 ? 60 : 50,
          color: const Color(0xFFE2DECD),
        ),
      ],
    );
  }
}