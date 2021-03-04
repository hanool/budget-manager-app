import 'package:budget_manager_app/models/daily_budgets_model.dart';
import 'package:charts_flutter/flutter.dart' as charts;
import 'package:flutter/material.dart';

class PointsLineChart extends StatelessWidget {
  final List<charts.Series> seriesList;
  final bool animate;

  PointsLineChart(this.seriesList, {this.animate});

  /// Creates a [LineChart] with sample data and no transition.
  factory PointsLineChart.withSampleData() {
    return new PointsLineChart(
      _createSampleData(),
      // Disable animations for image tests.
      animate: false,
    );
  }


  @override
  Widget build(BuildContext context) {
    return new charts.LineChart(
        seriesList,
        
        animate: animate,
        defaultRenderer: new charts.LineRendererConfig(includePoints: true)
      );
  }

  /// Create one series with sample hard coded data.
  static List<charts.Series<DailyBudgets, int>> _createSampleData() {
    final data = [
      new DailyBudgets(1, 25),
      new DailyBudgets(2, 100),
      new DailyBudgets(3, 75),
      new DailyBudgets(4, 88),
      new DailyBudgets(5, 126),
      new DailyBudgets(6, 97),
      new DailyBudgets(7, 240),
      new DailyBudgets(8, 10),
      new DailyBudgets(9, 5),
    ];

    return [
      new charts.Series<DailyBudgets, int>(
        id: 'Budgets',
        colorFn: (_, __) => charts.MaterialPalette.black,
        domainFn: (DailyBudgets budgets, _) => budgets.day,
        measureFn: (DailyBudgets budgets, _) => budgets.budgets,
        data: data,
      )
    ];
  }
}
