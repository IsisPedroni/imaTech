void main() {
  
  int numero = 5;

  for (int i = 1; i < 11; i++) {
    print(i);
    if (i == numero) {
      break;
    }else{
      continue;
    }
  }
}
