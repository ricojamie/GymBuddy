import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class WeightChart extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: SfCartesianChart(
        primaryXAxis: CategoryAxis(),
        title: ChartTitle(text: 'Weight over time'),
        legend: Legend(isVisible: false),
        series: <LineSeries<WeightData, String>>[
          LineSeries<WeightData, String>(
            dataSource: <WeightData>[
              WeightData('Jan', 160),
              WeightData('Feb', 163),
              WeightData('Mar', 168),
              WeightData('Apr', 165),
              WeightData('May', 170),
            ],
            xValueMapper: (WeightData weight, _) => weight.month,
            yValueMapper: (WeightData weight, _) => weight.weight,
            dataLabelSettings: DataLabelSettings(isVisible: true),
          ),
        ],
      ),
    );
  }
}

class WeightData {
  WeightData(this.month, this.weight);
  final String month;
  final double weight;
}
