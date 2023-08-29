import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class AnalysesHome extends StatefulWidget {
  const AnalysesHome({super.key});

  @override
  State<AnalysesHome> createState() => _AnalysesHomeState();
}

class _AnalysesHomeState extends State<AnalysesHome> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Center(
            child: Container(
                child: SfCartesianChart(
                  plotAreaBorderWidth: 0,
                  title: ChartTitle(
                    text: 'Número de Análises',
                    alignment: ChartAlignment.near
                  ),
                  primaryYAxis: NumericAxis(
                      maximum: 100,
                      minimum: 0,
                      interval: 20,
                      axisLine: const AxisLine(width: 0, color: Colors.transparent),
                      majorTickLines: const MajorTickLines(size: 0)
                  ),
                  series: _getColumnSeries(),
                )
            )
        )
    );
  }
}
List<ColumnSeries<AnalysesData, String>> _getColumnSeries (){
  return <ColumnSeries<AnalysesData, String>>[
    ColumnSeries<AnalysesData, String>(
      width:  0.8,
      spacing: 0.2,
      dataSource:  <AnalysesData>[
        AnalysesData('JAN', 20)
      ],
      xValueMapper: (AnalysesData data, _) => data.month as String,
      yValueMapper: (AnalysesData data, _) => data.analysesNumber,
    ),
  ];
}
class AnalysesData {
  AnalysesData(this.month, this.analysesNumber);
  final String month;
  final double analysesNumber;
}
