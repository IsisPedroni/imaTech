class Aluno {
  String? _nome;
  double? _nota1, _nota2;

  Aluno(String nome, double nota1, double nota2) {
    this._nome = nome;
    this._nota1 = nota1;
    this._nota2 = nota2;

    _mensagem();
  }

  double _calculoMedia() {
    return (this._nota1! + this._nota2!) / 2;
  }

  String _situacao() {
    return _calculoMedia() >= 7 ? 'Aprovado(a)' : 'Reprovado(a)';
  }

  void _mensagem() {
    print(
        '${this._nome} está ${_situacao()} com media ${_calculoMedia().toStringAsFixed(1)}');
  }
}
