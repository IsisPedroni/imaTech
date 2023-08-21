// Importar dependência do Material
import 'package:aula06/Exemplo01.dart';
import 'package:aula06/Exemplo02.dart';

import 'package:flutter/material.dart';

// Classe - StatefulWidget
class Exemplo03 extends StatefulWidget {
  const Exemplo03({super.key});

  @override
  State<StatefulWidget> createState() {
    return EstruturaExemplo03();
  }
}

// Classe - State
class EstruturaExemplo03 extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("AlertDialog"),
        ),
        body: SizedBox(
          width: 300,
          child: Column(
            children: [
              ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Exemplo01(),
                    ),
                  );
                },
                child: const Text('Exemplo 01'),
              ),
               ElevatedButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const Exemplo02(),
                    ),
                  );
                },
                child: const Text('Exemplo 02'),
              ),
              
              ElevatedButton(
                onPressed: () {
                  showDialog(
                    context: context,
                    builder: (context) => AlertDialog(
                      title: const Text('Titulo do modal'),
                      content: const Text('Sua mensagema aqui!'),
                      actions: [
                        ElevatedButton(
                          onPressed: () {
                            Navigator.pop(context);
                          },
                          child: const Text('Fechar!'),
                        ),
                      ],
                    ),
                  );
                },
                child: const Text('Clique aqui'),
              ),
            ],
          ),
        ));
  }
}
