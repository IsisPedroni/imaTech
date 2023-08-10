import 'package:flutter/material.dart';

class Exercicio01 extends StatefulWidget {
  const Exercicio01({super.key});
  @override
  State<StatefulWidget> createState() {
    return EstruturaExercicio01();
  }
}

class EstruturaExercicio01 extends State {
  int? num1;
  int? num2;
  String? texto;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Atividade 01'),
      ),
      body: SizedBox(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: SizedBox(
                width: 400,
                child: Column(
                  children: [
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          num1 = int.tryParse(value);
                        });
                      },
                    ),
                    TextField(
                      onChanged: (value) {
                        setState(() {
                          num2 = int.tryParse(value);
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          if (num1 != null && num2 != null) {
                            setState(() {
                              if (num1 == num2) {
                                texto = 'Soma: ${num1! + num2!}';
                              } else {
                                texto = 'Multiplicação: ${num1! * num2!}';
                              }
                            });
                          }
                        },
                        child: const Text(
                          'Clique aqui',
                          textDirection: TextDirection.ltr,
                        ),
                      ),
                    ),
                    Text(
                      texto ?? '',
                      textDirection: TextDirection.ltr,
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
