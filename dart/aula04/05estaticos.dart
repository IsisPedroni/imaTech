// ignore_for_file: unused_local_variable

class Calculadora {
  static void soma(int n1, int n2) {
    print('A soma é ${n1 + n2}');
  }
}

class Cliente {
  static int contator = 0;

  Cliente() {
    contator++;
    print(contator);
  }
}

void main() {
  
  Calculadora.soma(8, 10);
  Cliente c1 = new Cliente();
  Cliente c2 = new Cliente();
  Cliente c3 = new Cliente();
}
