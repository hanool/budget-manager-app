import 'package:flutter/material.dart';
import 'pages/monthly_static_page.dart';

void main() {
  return runApp(AppHome());
}

class AppHome extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: SafeArea(
        child: Scaffold(
              appBar: AppBar(
                title: Text('graph'),
              ),
              body:Column(
                children: <Widget>[
                  Container(
                    color: Colors.white,
                    height: 200,
                  ),
                  Expanded(
                    child: Center(
                      child: PointsLineChart.withSampleData(),
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    height: 100,
                  ),
                ]
              ),
          ),
      ), 
    );
  } 
}
