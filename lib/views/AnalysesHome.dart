import 'package:flutter/material.dart';
import 'package:fl_chart/fl_chart.dart';
import 'package:mapgas/views/SideBar.dart';
import 'package:mapgas/views/utils/FooterMenu.dart';
import 'package:mapgas/views/utils/TopMenu.dart';
import 'package:mapgas/main.dart';

class AnalysesHome extends StatefulWidget {
  const AnalysesHome({super.key});

  @override
  State<AnalysesHome> createState() => _AnalysesHomeState();


}

class _AnalysesHomeState extends State<AnalysesHome> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  String _title = 'Análises da Gasolina';
  void _updateTitle(String newTitle) {
    setState(() {
      _title = newTitle;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      extendBody: true,
      appBar: TopMenu(scaffoldKey: _scaffoldKey, title: _title,),
      bottomNavigationBar: FooterMenu(
        isHome: true,
        onItemTapped: (title) {
          _scaffoldKey.currentState?.closeDrawer();
          _updateTitle(title);
          Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => MyApp())
          );
        },
      ),
      drawer: NavSideBar(
        onItemTapped: (title) {
          _updateTitle(title);
          _scaffoldKey.currentState?.closeDrawer();
        },
      ),
      body: Center(
        child: SizedBox(
          height: 300,
          child: BarChart(
            BarChartData(
              gridData: FlGridData(show: false),
              borderData: FlBorderData(show: false),
              maxY: 100,
              minY: 0,
              titlesData: FlTitlesData(
                topTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false
                  )
                ),
                rightTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: false
                  )
                ),
                bottomTitles: AxisTitles(
                  sideTitles: SideTitles(
                    showTitles: true,
                    getTitlesWidget: getBottomTitles
                  )
                )
              ),
              barGroups: barChartGroup
            ),
          ),
        ),
      ),
    );
  }
}

Widget getBottomTitles(double values, TitleMeta meta){
  Widget text;

  switch (values.toInt()){
    case 0:
      text = const Text('JAN');
      break;
    case 1:
      text = const Text('FEV');
      break;
    case 2:
      text = const Text('MAR');
      break;
    case 3:
      text = const Text('ABR');
      break;
    case 4:
      text = const Text('MAI');
      break;
    case 5:
      text = const Text('JUN');
      break;
    case 6:
      text = const Text('JUL');
      break;
    case 7:
      text = const Text('AGO');
      break;
    case 8:
      text = const Text('SET');
      break;
    case 9:
      text = const Text('OUT');
      break;
    case 10:
      text = const Text('NOV');
      break;
    case 11:
      text = const Text('DEZ');
      break;
    default:
      text = const Text('');
      break;
  }
  
  return SideTitleWidget(axisSide: meta.axisSide, child: text);
}
List<BarChartGroupData> barChartGroup = [
  BarChartGroupData(
      x: 7,
      barRods: [
        BarChartRodData(toY: 70, borderRadius: BorderRadius.zero, color: Color(0xFFF45B37)),
        BarChartRodData(toY: 31, borderRadius: BorderRadius.zero, color: Color(0xFF27AE60)),
      ],
    barsSpace: 2
  ),
  BarChartGroupData(
      x: 8,
      barRods: [
        BarChartRodData(toY: 52, borderRadius: BorderRadius.zero, color: Color(0xFFF45B37)),
        BarChartRodData(toY: 31, borderRadius: BorderRadius.zero, color: Color(0xFF27AE60)),
      ],
      barsSpace: 2
  ),
  BarChartGroupData(
      x: 10,
      barRods: [
        BarChartRodData(toY: 52, borderRadius: BorderRadius.zero, color: Color(0xFFF45B37)),
        BarChartRodData(toY: 31, borderRadius: BorderRadius.zero, color: Color(0xFF27AE60)),
      ],
      barsSpace: 2
  ),
  BarChartGroupData(
      x: 11,
      barRods: [
        BarChartRodData(toY: 41, borderRadius: BorderRadius.zero, color: Color(0xFFF45B37)),
        BarChartRodData(toY: 41, borderRadius: BorderRadius.zero, color: Color(0xFF27AE60)),
      ],
      barsSpace: 2
  ),
  BarChartGroupData(
      x: 0,
      barRods: [
        BarChartRodData(toY: 41, borderRadius: BorderRadius.zero, color: Color(0xFFF45B37)),
        BarChartRodData(toY: 55, borderRadius: BorderRadius.zero, color: Color(0xFF27AE60)),
      ],
      barsSpace: 2
  ),
  BarChartGroupData(
      x: 1,
      barRods: [
        BarChartRodData(toY: 30, borderRadius: BorderRadius.zero, color: Color(0xFFF45B37)),
        BarChartRodData(toY: 55, borderRadius: BorderRadius.zero, color: Color(0xFF27AE60)),
      ],
      barsSpace: 2
  ),
  BarChartGroupData(
      x: 2,
      barRods: [
        BarChartRodData(toY: 10, borderRadius: BorderRadius.zero, color: Color(0xFFF45B37)),
        BarChartRodData(toY: 55, borderRadius: BorderRadius.zero, color: Color(0xFF27AE60)),
      ],
      barsSpace: 2
  ),

];