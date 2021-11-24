import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class magnitud {
  magnitud(this.time, this.sales);
  final String time;
  final double? sales;
}

class MagPage extends StatelessWidget {
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
          LineSeries<magnitud, String>(
            dataSource: [
              // Bind data source
              magnitud('5min', 28),
              magnitud('10min', 28),
              magnitud('15min', 24),
              magnitud('20min', 22),
              magnitud('25min', 20)
            ],
            xValueMapper: (magnitud sales, _) => sales.time,
            yValueMapper: (magnitud sales, _) => sales.sales,
          )
        ]))));
  }
}
