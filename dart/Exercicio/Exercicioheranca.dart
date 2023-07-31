// 5. O que é uma herança? Exemplifique seu uso criando duas classes e instanciando um objeto.
class NomePessoa extends SobrenomePessoa {
  String? nome;

  void apresentacaoCompleta() {
    print('Meu nome completo é $nome $sobrenome');
  }
}

class SobrenomePessoa {
  String? sobrenome;
}

void main() {
  var pessoa = NomePessoa();
  pessoa.nome = "Pedro";
  pessoa.sobrenome = "Silva";

  pessoa.apresentacaoCompleta();
}
