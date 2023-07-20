// 5. Crie uma lista que armazene diversos nomes, enquanto não for informado o nome SAIR, peça um nome, ao digitar o comando SAIR, exiba todos os nomes contidos no vetor, exceto da palavra SAIR.
import 'dart:io';

void main() {
  List<String> nomes = [];

  while (true) {
    print("Digite um nome ou 'SAIR' para finalizar:");
    String nome = stdin.readLineSync()!; 

    if (nome.toUpperCase() == 'SAIR') {
      break; 
    } else {
      nomes.add(nome); 
    }
  }

  print('Nomes digitados: $nomes');
}
