class Caixa<T> {
  T? conteudo;

  Caixa(this.conteudo);

  void mostrarConteudo() {
    print('Conteúdo da caixa: $conteudo');
  }
}

void main() {
  var caixaDeInteiros = Caixa<int>(10);
  caixaDeInteiros.mostrarConteudo();

  var caixaDeStrings = Caixa<String>('Aqui tem conteudo');
  caixaDeStrings.mostrarConteudo();
}
