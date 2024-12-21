import 'dart:async';
import 'package:flutter/material.dart';
import 'package:menomate/helpers/datas.dart';
import 'package:menomate/screens/aware.dart';
import 'package:syncfusion_flutter_charts/charts.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class Statistics extends StatefulWidget {
  const Statistics({super.key});

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

  double currentSliderValue2 = 0;
  List<PieData> pieData = [];

  @override
  void initState() {
    super.initState();
    fetchPieData();
    Timer.periodic(const Duration(seconds:2), (Timer t) => fetchPieData());
  }

  Future<void> fetchPieData() async {
    try {
      final response = await http.get(Uri.parse('$url/api/emotion_counts'));
      
      if (response.statusCode == 200) {
        final Map<String, dynamic> responseData = json.decode(response.body);

        setState(() {
          pieData = [
            PieData("Happy", responseData["Happy"].toDouble(), Colors.yellow),
            PieData("Sad", responseData["Sad"].toDouble(), Colors.blue),
            PieData("Surprise", responseData["Surprise"].toDouble(), Colors.black),
            PieData("Fear", responseData["Fear"].toDouble(), Colors.green),
            PieData("Anger", responseData["Anger"].toDouble(), Colors.red),
          ];
        });
      } else {
        throw Exception('Failed to load emotion data');
      }
    } catch (error) {
      print("Error fetching data: $error");
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 40),
              const Text(
                "Menstrual Cycle Predictor/Tracker",
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
                "Today's Mood Assessment",
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
                    overflowMode: LegendItemOverflowMode.wrap,
                  ),
                  series: <CircularSeries<PieData, String>>[
                    RadialBarSeries<PieData, String>(
                      maximumValue: 50,
                      radius: '100%',
                      gap: '3%',
                      dataSource: pieData,
                      cornerStyle: CornerStyle.bothCurve,
                      xValueMapper: (PieData pieData, _) => pieData.mood,
                      yValueMapper: (PieData pieData, _) => pieData.range,
                      pointColorMapper: (PieData data, _) => data.color,
                      name: "Mood tracker",
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              const Text(
                "How is the flow today?",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
              SizedBox(
                height: 100,
                child: SliderTheme(
                  data: const SliderThemeData(trackHeight: 10),
                  child: Slider(
                    value: currentSliderValue2,
                    max: 3,
                    divisions: 3,
                    activeColor: Colors.red,
                    label: currentSliderValue2.round().toString(),
                    onChanged: (double newValue) {
                      setState(() {
                        currentSliderValue2 = newValue;
                      });
                    },
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => const AwarenessRoute()),
          );
        },
        splashColor: Colors.yellow,
        child: const Icon(Icons.lightbulb_outline_rounded),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,
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
