// Importar pac material
import 'package:flutter/material.dart';
// Importando o arq Texto
import 'Texto.dart';

// Método de inicialização
void main() {
  // runApp(Texto.obterNome(
  //   nome: 'Ísis',
  // ));
  // runApp(Texto.obterNome(nome: 'Ísis', cor: Colors.amber));
  // runApp(Texto.obterNomeCor(nome: 'Ísis', cor: Colors.amber,));
  runApp(Texto.obterNomeCorTamanhoFonte(
    nome: 'Ísis',
    cor: Colors.amber,
    tamanhoFonte: 26,
  ));
}






// Método de incialização
// 1 Exemplo
// void main() {
//   runApp(const Text(
//     'Hello Word!',
//     textDirection: TextDirection.ltr,
//     style: TextStyle(fontSize: 36, color: Color.fromARGB(255, 139, 96, 116)),
//   ));
// }

