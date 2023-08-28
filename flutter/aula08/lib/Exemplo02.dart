// Pacote Material
import 'package:flutter/material.dart';

// StatefulWidget
class Exemplo02 extends StatefulWidget {
  const Exemplo02({super.key});

  @override
  State<StatefulWidget> createState() {
    return Exemplo02Estrutura();
  }
}

class Exemplo02Estrutura extends State {
  @override
  Widget build(BuildContext context) {
    // Obter largura da tela
    double larguraTela = MediaQuery.of(context).size.width;

    // Variavel contendo a quantidade de elementos por linha
    int quantidades;

    // Breakpoints
    if (larguraTela >= 1200) {
      quantidades = 6;
    } else if (larguraTela >= 1000) {
      quantidades = 5;
    } else if (larguraTela >= 600) {
      quantidades = 3;
    } else {
      quantidades = 2;
    }

    // Scaffold
    return Scaffold(
      appBar: AppBar(
        title: const Text('Exemplo 02'),
      ),
      body: Center(
        child: GridView(
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: quantidades),
          children: [
            Image.network('https://picsum.photos/200/200?random=1'),
            Image.network('https://picsum.photos/200/200?random=2'),
            Image.network('https://picsum.photos/200/200?random=3'),
            Image.network('https://picsum.photos/200/200?random=4'),
            Image.network('https://picsum.photos/200/200?random=5'),
            Image.network('https://picsum.photos/200/200?random=6'),
            Image.network('https://picsum.photos/200/200?random=7'),
            Image.network('https://picsum.photos/200/200?random=8'),
            Image.network('https://picsum.photos/200/200?random=9'),
            Image.network('https://picsum.photos/200/200?random=10'),
            Image.network('https://picsum.photos/200/200?random=11'),
            Image.network('https://picsum.photos/200/200?random=12'),
          ],
        ),
      ),
    );
  }
}
