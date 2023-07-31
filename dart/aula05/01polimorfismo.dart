// Poli -> Vários
// Morphus -> Formas

class DescontoPadrao {
  // vale Transporte
  void valeTransporte(double salario) {
    print('Desconto do VT Padrão: ${salario * 0.6}');
  }

  // importo de renda
  void importoRenda(double salario) {
    print('Desconto IR padrão: ${salario * 0.5}');
  }
}

class Analista extends DescontoPadrao {
  @override
  void impostoRenda(double salario) {
    print('Desconto IR Analista: ${salario * 0.8}');
  }
}

void main() {
  DescontoPadrao obj1 = new DescontoPadrao();
  obj1.valeTransporte(100);
  obj1.importoRenda(100);

  Analista obj2 = new Analista();
  obj2.valeTransporte(200);
  obj2.importoRenda(200);
}
