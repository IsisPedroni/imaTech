void main() {
  try {
    String texto = "Ísis";
    int numero = int.parse(texto);
    print("O número informado é $numero");
  } catch (erro) {
    print("Falha ao executar: $erro");
  }
}
