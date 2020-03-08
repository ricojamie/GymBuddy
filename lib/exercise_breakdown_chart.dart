import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class ExerciseBreakDownChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final List<ChartData> chartData = [
      ChartData('Biceps', 40, Colors.orange),
      ChartData('Triceps', 45, Colors.teal),
      ChartData('Chest', 75, Colors.purple),
      ChartData('Back', 75, Colors.green),
      ChartData('Shoulders', 55, Colors.red),
      ChartData('Legs', 80, Colors.yellow),
    ];

    return Container(
      child: SfCircularChart(
        title: ChartTitle(text: 'Exercise Frequency Breakdown'),
        legend: Legend(isVisible: true),
        tooltipBehavior: TooltipBehavior(enable: true),
        series: <CircularSeries>[
          DoughnutSeries<ChartData, String>(
            dataSource: chartData,
            pointColorMapper: (ChartData data, _) => data.color,
            xValueMapper: (ChartData data, _) => data.x,
            yValueMapper: (ChartData data, _) => data.y,
            dataLabelSettings: DataLabelSettings(isVisible: true),
          ),
        ],
      ),
    );
  }
}

class ChartData {
  ChartData(this.x, this.y, [this.color]);
  final String x;
  final double y;
  final Color color;
}
