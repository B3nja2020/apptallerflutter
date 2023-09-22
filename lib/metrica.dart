import 'package:flutter/material.dart';
import 'package:charts_flutter_new/flutter.dart' as charts;

class AdopcionPorRaza {
  final String raza;
  final int adopciones;
  final charts.Color color;

  AdopcionPorRaza(this.raza, this.adopciones, Color color)
      : this.color = new charts.Color(
            r: color.red, g: color.green, b: color.blue, a: color.alpha);
}

class PaginaMetricas extends StatelessWidget {
  final List<AdopcionPorRaza> data = [
    new AdopcionPorRaza('Labrador', 23, Colors.yellow),
    new AdopcionPorRaza('Bulldog', 10, Colors.green),
    new AdopcionPorRaza('Beagle', 15, Colors.blue),
    new AdopcionPorRaza('Poodle', 8, Colors.red),
    new AdopcionPorRaza('Chihuahua', 20, Colors.purple),
    new AdopcionPorRaza('Husky', 18, Colors.orange),
  ];

  @override
  Widget build(BuildContext context) {
    List<charts.Series<AdopcionPorRaza, String>> series = [
      charts.Series(
        id: 'Adopciones',
        domainFn: (AdopcionPorRaza adopciones, _) => adopciones.raza,
        measureFn: (AdopcionPorRaza adopciones, _) => adopciones.adopciones,
        colorFn: (AdopcionPorRaza adopciones, _) => adopciones.color,
        data: data,
      ),
    ];

    return new Scaffold(
      appBar: AppBar(title: const Text('Métricas de Adopción')),
      body: new Padding(
        padding: EdgeInsets.all(8.0),
        child: new charts.BarChart(series, animate: true),
      ),
    );
  }
}
