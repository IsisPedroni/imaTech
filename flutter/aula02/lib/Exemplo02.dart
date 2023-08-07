import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

class ConteudoPagina extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ultilizando Scaftold')),
      body: SizedBox(
          child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(border: Border.all(color: Colors.purple)),
            child: const Center(
                child: Text(
              'Quadrado 01',
              textDirection: TextDirection.ltr,
            )),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(border: Border.all(color: Colors.pink)),
            child: Image.network(
                'https://cdn4.iconfinder.com/data/icons/logos-brands-5/24/flutter-512.png'),
          ),
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(border: Border.all(color: Colors.red)),
          ),
          Container(
            width: 100,
            height: 100,
            decoration:
                BoxDecoration(border: Border.all(color: Colors.lightBlue)),
          ),
        ],
      )),
    );
  }
}
