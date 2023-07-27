class Pessoa extends Endereco {
  String? nome;
  int? idade;
}

class Endereco {
  String? bairro;
  String? logradouro;
  int? numero;
}

void main() {
  // ignore: unused_local_variable
  Pessoa p1 = new Pessoa();
}
