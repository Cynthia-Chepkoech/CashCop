import 'package:fl_chart/fl_chart.dart';
import 'package:flutter/material.dart';

class LineChartWidget extends StatelessWidget {
  const LineChartWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return LineChart(
      LineChartData(
        minX: 0,
        maxY: 10,
        minY: 0,
        maxX: 7,
        titlesData: const FlTitlesData(
            rightTitles: AxisTitles(sideTitles: SideTitles(showTitles: false)),
            topTitles: AxisTitles(sideTitles: SideTitles(showTitles: false))),
        gridData: const FlGridData(show: false),
        borderData: FlBorderData(show: true, border: Border.all()),
        lineBarsData: [
          LineChartBarData(
            belowBarData:
                BarAreaData(show: true, color: Colors.purple.shade200),
            isCurved: true,
            dotData: const FlDotData(show: false),
            spots: [
              const FlSpot(0, 8),
              const FlSpot(1, 9),
              const FlSpot(2, 2),
              const FlSpot(4, 5),
              const FlSpot(5, 2),
              const FlSpot(6, 8),
              const FlSpot(7, 10),
            ],
          ),
        ],
      ),
    );
  }
}
