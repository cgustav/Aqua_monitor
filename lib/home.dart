import 'package:aqua_monitor/complex_chart.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white, // Fondo blanco
      appBar: AppBar(
        // backgroundColor: Color(0xFFFF7643), // Color primario
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Aqua Monitor',
          style: TextStyle(color: Color(0xFFFF7643)),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Dashboard',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF7643), // Color primario
              ),
            ),
            SizedBox(height: 16),
            // Aquí puedes agregar widgets para mostrar los datos del dashboard
            // Text('Datos de consumo de agua del último mes'),
            LineChartSample2(),
            // Otros widgets relacionados con el dashboard

            SizedBox(height: 32),

            Text(
              'Sensores conectados',
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold,
                color: Color(0xFFFF7643), // Color primario
              ),
            ),
            SizedBox(height: 16),
            // Aquí puedes agregar widgets para mostrar los sensores conectados
            Text('Sensor 1'),
            Text('Sensor 2'),
            // Otros widgets relacionados con los sensores conectados
          ],
        ),
      ),
    );
  }
}
