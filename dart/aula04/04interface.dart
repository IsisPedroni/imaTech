// Interface
class InterfaceCalculadora1 {
  // Metodo
  int soma(int n1, int n2) {
    return n1 + n2;
  }
}

class InterfaceCalculadora2 {
  // Metodo
  int subtracao(int n1, int n2) {
    return n1 - n2;
  }
}

// Calss
class Calculadora implements InterfaceCalculadora1, InterfaceCalculadora2 {
  @override
  int soma(int n1, int n2) {
    // TODO: implement soma
    throw UnimplementedError();
  }

  @override
  int subtracao(int n1, int n2) {
    // TODO: implement subtracao
    throw UnimplementedError();
  }
}
