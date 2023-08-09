import 'package:aula03/Atividade01.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

// Confg do projeto
class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData.light(),
      home: Atividade01(),
    );
  }
}
