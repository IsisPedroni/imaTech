class AnimalDeEstimacao {
  String nome;
  int idade;

  AnimalDeEstimacao(this.nome, this.idade);

  void latir() {
    print("$nome está latindo!");
  }
}

void main() {
  AnimalDeEstimacao cachorro1 = AnimalDeEstimacao("Kurama", 4);

  cachorro1.latir();

  print(
      "Meu cachorro se chama ${cachorro1.nome} e ela tem ${cachorro1.idade} anos.");
}
