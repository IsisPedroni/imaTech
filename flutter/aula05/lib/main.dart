// Importar pacote Material
import 'package:flutter/material.dart';

// Inicialização
void main() {
  runApp(const MyApp());
}

// StatelessWidget
class MyApp extends StatelessWidget {
  // Construtor
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
            seedColor: const Color.fromARGB(255, 248, 1, 84)),
      ),
      home: const Pagina(),
    );
  }
}

// StatefulWidget
class Pagina extends StatefulWidget {
  // Construtor
  const Pagina({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

// State
class ConteudoPagina extends State {
  // Lista de nomes
  List<String> nomes = ["Ísis", "Carla", "Ollie", "Suelen", "Kurama"];

  String? nome;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("5ª aula de Flutter"),
      ),
      body: SizedBox(
        child: Column(
          children: [
            // Caixa de texto e Botão
            SizedBox(
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.only(top: 30),
                    child: TextField(
                      onChanged: (valorDigitado) {
                        setState(() {
                          nome = valorDigitado;
                        });
                      },
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10),
                    child: ElevatedButton(
                      onPressed: () {
                        setState(() {
                          nomes.add(nome!);
                        });
                      },
                      child: const Text("Cadastrar"),
                    ),
                  )
                ],
              ),
            ),

            // ListView
            SizedBox(
              height: 300,
              child: ListView.builder(
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemCount: nomes.length,
                itemBuilder: (BuildContext obj, int indice) {
                  return Card(
                    color: Colors.purple,
                    child: Padding(
                      padding: const EdgeInsets.all(10),
                      child: Column(
                        children: [
                          Text(nomes[indice]),
                          ElevatedButton(
                              onPressed: () {
                                setState(
                                  () {
                                    nomes.removeAt(indice);
                                  },
                                );
                              },
                              child: const Text(
                                'Excluir',
                              )),
                        ],
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}



/*
Primeiro exemplo

ListView(
          children: const [
            ListTile(
              title: Text('Linha 01'),
            ),
              ListTile(
              title: Text('Linha 02'),
            )
          ],
        )

*/

/*
Segundo Exemplo

ListView(
        children: const [
          Card(
            color: Colors.purple,
            child:
                Padding(padding: EdgeInsets.all(10), child: Text('Linha 01')),
          ),
          Card(
            color: Colors.purple,
            child:
                Padding(padding: EdgeInsets.all(10), child: Text('Linha 01')),
          ),
        ],
      ),
*/