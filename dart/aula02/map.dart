void main(){
  // Map
  Map<String, String> estadosCapitais = {
    'Goiás':'Goiânia',
    'Paraná':'Curitiba',
    'Santa Catarina':'Florianópolis',
    'Rio Grande so Sul':'Porto Alegre'
  };

  // Exibir todos os valores
  print(estadosCapitais);
  
  // Lista todos os valores inididualmente
   estadosCapitais.forEach((chave, valor) { print(valor + " - " + chave); });

  // Exibir o valor da chave
  // print(estadosCapitais.keys);

  // Exibir o valor da chave Goias
  print(estadosCapitais['Goiás']);
}