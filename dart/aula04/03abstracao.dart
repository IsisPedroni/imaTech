abstract class Crud {
  bool cadastro();
  List selecao();
  bool alteracao();
  bool remocao();
 
}

class Produto extends Crud {
  @override
  bool alteracao() {
    // TODO: implement alteracao
    throw UnimplementedError();
  }

  @override
  bool cadastro() {
    // TODO: implement cadastro
    throw UnimplementedError();
  }

  @override
  bool remocao() {
    // TODO: implement remocao
    throw UnimplementedError();
  }

  @override
  List selecao() {
    // TODO: implement selecao
    throw UnimplementedError();
  }
}

void main() {}
