import 'package:flutter/material.dart';

class Atividade01 extends StatefulWidget {
  const Atividade01({super.key});
  @override
  State<StatefulWidget> createState() {
    return EstruturaAtividade01();
  }
}

class EstruturaAtividade01 extends State {
  // Variáveis
  String? nome;
  String? texto;

// Metodo
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
                          nome = value;
                        });
                      },
                    ),
                    Padding(
                      padding: const EdgeInsets.only(top: 10, bottom: 10),
                      child: ElevatedButton(
                        onPressed: () {
                          setState(() {
                            texto = 'Boa Noite, $nome';
                          });
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
