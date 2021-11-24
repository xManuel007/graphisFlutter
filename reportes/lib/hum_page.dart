import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class humedad {
  humedad(this.time, this.sales);
  final String time;
  final double? sales;
}

class HumPage extends StatelessWidget {
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
          LineSeries<humedad, String>(
            dataSource: [
              // Bind data source
              humedad('5min', 28),
              humedad('10min', 28),
              humedad('15min', 24),
              humedad('20min', 22),
              humedad('25min', 20)
            ],
            xValueMapper: (humedad sales, _) => sales.time,
            yValueMapper: (humedad sales, _) => sales.sales,
          )
        ]))));
  }
}
