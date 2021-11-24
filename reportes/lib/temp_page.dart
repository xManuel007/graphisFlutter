import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class temperatura {
  temperatura(this.time, this.sales);
  final String time;
  final double? sales;
}

class TempPage extends StatelessWidget {
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
          LineSeries<temperatura, String>(
            dataSource: [
              // Bind data source
              temperatura('5min', 28),
              temperatura('10min', 28),
              temperatura('15min', 24),
              temperatura('20min', 22),
              temperatura('25min', 20)
            ],
            xValueMapper: (temperatura sales, _) => sales.time,
            yValueMapper: (temperatura sales, _) => sales.sales,
          )
        ]))));
  }
}
