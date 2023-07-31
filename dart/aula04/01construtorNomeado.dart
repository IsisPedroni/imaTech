class Produto {
  String? nome;
  double? valor;
  String? segmento;

// Construtor
  Produto() {
    print('Contrutor Inicado');
  }

// Contrutor do segmento eletronico
  Produto.eletronico(String nome, double valor) {
    this.nome = nome;
    this.valor = valor;
    this.segmento = 'Eletronico';
  }

  Produto.alimenticio(String nome, double valor) {
    this.nome = nome;
    this.valor = valor;
    this.segmento = 'Alimentício';
  }
}

void main() {
  // ignore_for_file: unused_local_variable
  Produto p1 = new Produto();
  Produto p2 = new Produto.eletronico('Sansung', 4500);
}
