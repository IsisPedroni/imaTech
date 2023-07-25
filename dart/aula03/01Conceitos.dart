// Class -> Molde
//Atribulos -> Caracteristicas -> variaveis
//Metodos -> Funçoes
//objeto -> criaçao de dados através de classes

class Pessoa {
  String? nome;
  int? idade;

  void apresenta() {
    print('Meu nome é ${nome} tenho ${idade} anos.');
  }
}

void main() {
  Pessoa pessoa1 = new Pessoa();
  pessoa1.nome = 'Julia';
  pessoa1.idade = 23;
  pessoa1.apresenta();

  Pessoa pessoa2 = new Pessoa();
  pessoa2.nome = 'Carla';
  pessoa2.idade = 27;
  pessoa2.apresenta();
}
