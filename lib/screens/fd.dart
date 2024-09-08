import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Statistics extends StatelessWidget {
  final List<Chart_Data> data = [
    Chart_Data('Jan', 20),
    Chart_Data('Feb', 21),
    Chart_Data('Mar', 20),
    Chart_Data('Apr', 65),
    Chart_Data('Jun', 20),
    Chart_Data('Jul', 45),
    Chart_Data('Aug', 20),
    Chart_Data('Sept', 30),
    Chart_Data('Oct', 38),
    Chart_Data('Nov', 20),
    Chart_Data('Dec', 16),
  ];

  Statistics({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start, // Align to start from left
          children: [
            const SizedBox(height: 40),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16.0), // Add padding for a modern look
              child: SizedBox(
                height: 240, // Increased height to accommodate the title and chart
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start, // Aligns text and chart to the left
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(bottom: 8.0), // Space between text and chart
                      child: Text(
                        "Menstrual Cycle Tracker",
                        style: TextStyle(
                          fontSize: 20,
                          fontWeight: FontWeight.bold,
                          color: Colors.black,
                        ),
                      ),
                    ),
                    Expanded(
                      child: SfCartesianChart(
                        plotAreaBorderWidth: 0,
                        primaryXAxis: const CategoryAxis(
                          majorGridLines: MajorGridLines(width: 0),
                          edgeLabelPlacement: EdgeLabelPlacement.shift,
                          axisLine: AxisLine(width: 0.5),
                        ),
                        primaryYAxis: const NumericAxis(
                          majorGridLines: MajorGridLines(width: 0),
                          axisLine: AxisLine(width: 0.5),
                        ),
                        series: <CartesianSeries>[
                          SplineSeries<Chart_Data, String>(
                            dataSource: data,
                            xValueMapper: (Chart_Data data, _) => data.x,
                            yValueMapper: (Chart_Data data, _) => data.y1,
                            color: Colors.pinkAccent,
                            width: 4,
                            markerSettings: const MarkerSettings(
                              isVisible: true,
                              shape: DataMarkerType.circle,
                              color: Colors.white,
                              borderWidth: 2,
                              borderColor: Colors.redAccent,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class Chart_Data {
  final String x;
  final int y1;

  Chart_Data(this.x, this.y1);
}
