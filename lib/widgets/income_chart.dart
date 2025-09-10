import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class IncomeChart extends StatelessWidget {
  const IncomeChart({super.key});

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
      sectionsSpace: 0,
      centerSpaceRadius: 50,
      sections: [
        PieChartSectionData(value: 40, color: Color(0xFF208CC8),showTitle: false),
        PieChartSectionData(value: 25, color: Color(0xFF4EB7F2),showTitle: false),
        PieChartSectionData(value: 20, color: Color(0xFF064061),showTitle: false),
        PieChartSectionData(value: 22, color: Color(0xFFE2DECD),showTitle: false),
      ],
    );
  }
}
