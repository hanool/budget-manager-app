import 'package:flutter/material.dart';
import 'pages/monthly_static_page.dart';

void main() {
  return runApp(AppHome());
}

class AppHome extends StatelessWidget {
  @override
  Widget build(context) {
    return PointsLineChart.withSampleData();
  } 
}
