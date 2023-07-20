void main() {
  // Lista (Array/Vetor)
  List<String> cidades = ['Novo Hamburgo', 'São Paulo'];

  // Adicionar um obj
  cidades.add('Rio de Janeiro');

  //  Adicinar dois novos obj
  cidades.addAll(['Belo Horizonte', 'Curitiba']);

  // Adicinar um novo obj na primeira posição
  // cidades.insert(0,'Goiana');

  // Remover registro através do valor
  // cidades.removeAt(0);

  // Remover varios registros
  // cidades.removeRange(0, 2);

  // Remover registro
  cidades.remove('Novo Hamburgo');

  // Exibir o conteudo da lista
  // print(cidades);

  // Laço for
  // for(int i = 0; i < cidades.length; i++){
  //   print(cidades[i]);
  // }

  // ForEach
  cidades.forEach((c) {
    print(c);
  });
}
