class Animal {
  void emitirSom() {
    print('Som genérico de animal.');
  }
}

class Cachorro extends Animal {
  @override
  void emitirSom() {
    print('Au au!');
  }
}

class Gato extends Animal {
  @override
  void emitirSom() {
    print('Miau!');
  }
}

void main() {

  Animal animal1 = Cachorro();
  Animal animal2 = Gato();

  animal1.emitirSom(); 
  animal2.emitirSom(); 
}
