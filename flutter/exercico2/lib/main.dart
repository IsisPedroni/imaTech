import 'package:flutter/material.dart';

void main() {
  runApp(AppCalendario());
}

class AppCalendario extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Calendário de Agosto 2023'),
        ),
        body: GradeCalendario(),
      ),
    );
  }
}

class GradeCalendario extends StatelessWidget {
  final List<String> diasDoMes = List.generate(31, (index) => (index + 1).toString());

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 7,
      children: List.generate(diasDoMes.length, (index) {
        return Center(
          child: Text(diasDoMes[index]),
        );
      }),
    );
  }
}
