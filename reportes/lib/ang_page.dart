import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class angulo {
  angulo(this.time, this.sales);
  final String time;
  final double? sales;
}

class AngPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                child: SfCartesianChart(
                    // Enables the legend
                    legend: Legend(isVisible: true),
                    // Initialize category axis
                    primaryXAxis: CategoryAxis(),
                    series: <ChartSeries>[
          // Initialize line series
          LineSeries<angulo, String>(
            dataSource: [
              // Bind data source
              angulo('5min', 28),
              angulo('10min', 28),
              angulo('15min', 24),
              angulo('20min', 22),
              angulo('25min', 20)
            ],
            xValueMapper: (angulo sales, _) => sales.time,
            yValueMapper: (angulo sales, _) => sales.sales,
          )
        ]))));
  }
}
