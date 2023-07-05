import 'package:aqua_monitor/complex_chart.dart';
import 'package:flutter/material.dart';

class SensorCard extends StatelessWidget {
  final String sensorName;
  final double consumption;
  final String unit;

  const SensorCard(
      {required this.sensorName,
      required this.consumption,
      required this.unit});

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              sensorName,
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 8),
            Text(
              'Consumo: $consumption $unit',
              style: TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // backgroundColor: Colors.white, // Fondo blanco
      appBar: AppBar(
        // backgroundColor: Color(0xFFFF7643), // Color primario
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text(
          'Aqua Monitor',
          style: TextStyle(color: Color(0xFFFF7643)),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF7643), // Color primario
              ),
            ),
            const SizedBox(height: 16),
            // Aquí puedes agregar widgets para mostrar los datos del dashboard
            // Text('Datos de consumo de agua del último mes'),
            Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(20),
                ),
                elevation: 4,
                child: Container(
                  child: const LineChartSample2(),
                )),
            // Otros widgets relacionados con el dashboard

            const SizedBox(height: 32),

            const Text(
              'Sensores conectados',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF7643), // Color primario
              ),
            ),
            const SizedBox(height: 16),
            // Aquí puedes agregar widgets para mostrar los sensores conectados
            // const Text('Sensor 1'),
            const SensorCard(
                sensorName: "Bomba 1 S871",
                consumption: 100000.83,
                unit: "Parque acuático"),

            const SensorCard(
                sensorName: "Sector cabañas 1",
                consumption: 40000.11,
                unit: "Complejo turístico"),

            const SensorCard(
                sensorName: "Sector cabañas 2",
                consumption: 28500.0097,
                unit: "Complejo turístico"),
            // const Text('Sensor 2'),
            // Otros widgets relacionados con los sensores conectados
          ],
        ),
      ),
    );
  }
}
