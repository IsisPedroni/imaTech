import 'package:flutter/material.dart';

class Pagina extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

class ConteudoPagina extends State {
  Color cor = Colors.green;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        setState(() {
          if (cor == Colors.green) {
            cor = Colors.purple;
          } else {
            cor = Colors.green;
          }
        });
      },
      child: Text('Clique aqui!'),
      style: ElevatedButton.styleFrom(backgroundColor: cor),
    );
  }
}
