import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class Statistics extends StatefulWidget {
  Statistics({super.key});

  @override
  State<Statistics> createState() => _StatisticsState();
}

class _StatisticsState extends State<Statistics> {
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

  double currentSliderValue1 = 0;
  double currentSliderValue2 = 0;
  @override
  Widget build(BuildContext context) {
    final List<PieData> piedata = <PieData>[
      PieData("Happy", 9.5, Colors.yellow),
      PieData("Sad", 50.5, Colors.blue),
      PieData('Frustrated', 40.00, Colors.black),
      PieData('Anxiety', 20.22, Colors.green),
      PieData('Anger', 19.2, Colors.red)
    ];

    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0), // Add padding for a modern look
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Menstrual Cycle Tracker",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 240,
                width: double.infinity,
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
              const SizedBox(height: 16),
              const Text(
                "Mood Tracker",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              const SizedBox(height: 8),
              SizedBox(
                height: 200,
                child: SfCircularChart(
                  legend: const Legend(
                      isVisible: true,
                      position: LegendPosition.left,
                      overflowMode: LegendItemOverflowMode.wrap),
                  series: <CircularSeries<PieData, String>>[
                    RadialBarSeries<PieData, String>(
                        maximumValue: 100,
                        radius: '100%',
                        gap: '3%',
                        dataSource: piedata,
                        cornerStyle: CornerStyle.bothCurve,
                        xValueMapper: (PieData piedata, _) => piedata.mood,
                        yValueMapper: (PieData piedata, _) => piedata.range,
                        pointColorMapper: (PieData data, _) => data.color,
                        name: "Mood tracker")
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Mood Tracker",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 100,
                child: Slider(
                  value: currentSliderValue1,
                  max: 3,
                  divisions: 3,
                  label: currentSliderValue1.round().toString(),
                  onChanged: (double newvalue) {
                    setState(() {
                      currentSliderValue1 = newvalue;
                    });
                  },
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "Flow Tracker",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 100,
                child: Slider(
                  value: currentSliderValue2,
                  max: 3,
                  divisions: 3,
                  label: currentSliderValue2.round().toString(),
                  onChanged: (double newvalue) {
                    setState(() {
                      currentSliderValue2 = newvalue;
                    });
                  },
                ),
              )
            ],
          ),
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

class PieData {
  final String mood;
  final double range;
  final Color color;
  PieData(this.mood, this.range, this.color);
}
