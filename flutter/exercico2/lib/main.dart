import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: CadastroPessoa(),
    );
  }
}

class CadastroPessoa extends StatefulWidget {
  const CadastroPessoa({super.key});

  @override
  State<StatefulWidget> createState() {
    return CadastroPessoaState();
  }
}

class CadastroPessoaState extends State<CadastroPessoa> {
  String nome = '';
  int idade = 0;
  String genero = 'Masculino';
  bool temHobby = false;
  String informacoes = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Cadastro de Pessoa"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Nome'),
              onChanged: (value) {
                setState(() {
                  nome = value;
                });
              },
            ),
            const SizedBox(height: 10),
            TextField(
              keyboardType: TextInputType.number,
              decoration: const InputDecoration(labelText: 'Idade'),
              onChanged: (value) {
                setState(() {
                  idade = int.tryParse(value) ?? 0;
                });
              },
            ),
            const SizedBox(height: 10),
            DropdownButton<String>(
              value: genero,
              onChanged: (value) {
                setState(() {
                  genero = value!;
                });
              },
              items: ['Masculino', 'Feminino', 'Outro']
                  .map<DropdownMenuItem<String>>(
                (String value) {
                  return DropdownMenuItem<String>(
                    value: value,
                    child: Text(value),
                  );
                },
              ).toList(),
            ),
            const SizedBox(height: 10),
            Row(
              children: [
                Checkbox(
                  value: temHobby,
                  onChanged: (value) {
                    setState(() {
                      temHobby = value!;
                    });
                  },
                ),
                const Text('Possui Hobby'),
              ],
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                setState(() {
                  String possuiHobby = temHobby ? 'Sim' : 'Não';
                  informacoes =
                      'Meu nome é $nome tenho $idade anos meu genero é $genero, possui hobby: $possuiHobby ';
                });
              },
              child: const Text('Cadastrar'),
            ),
            const SizedBox(height: 20),
            Text(
              informacoes,
              textAlign: TextAlign.center,
              style: const TextStyle(fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}
