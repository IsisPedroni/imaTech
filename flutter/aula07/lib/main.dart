// Importação do material
import 'package:flutter/material.dart';

// Importação do http
import 'package:http/http.dart' as http;

// Importação do convert(pega as informaçoes do http)
import 'dart:convert';

// Inicialização
void main() {
  runApp(const MyApp());
}

// Stateless
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(
          seedColor: Colors.purpleAccent,
        ),
      ),
      home: const Pagina(),
    );
  }
}

// StatefulWidget
class Pagina extends StatefulWidget {
  const Pagina({super.key});

  @override
  State<StatefulWidget> createState() {
    return ConteudoPagina();
  }
}

// State
class ConteudoPagina extends State {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("7ª aula de Flutter"),
      ),
      body: FutureBuilder(
        future: obterPostagens(),
        builder: (context, snapshot) {
          return ListView.builder(
            itemCount: snapshot.data?.length,
            itemBuilder: (context, index) {
              return Card(
                child: Text('Titulo: ${snapshot.data?[index].id}'),
              );
            },
          );
        },
      ),
    );
  }
}

// Classe de Portagem
class Post {
  int? userId;
  int? id;
  String? title;
  String? body;
}

// Classe contendo metodo assincrono
Future<List<Post>> obterPostagens() async {
  String url = 'https://jsonplaceholder.typicode.com/posts';

  // Realizar a requisiçao (mostra os dados da requisiçao (tempo que levou, status etc)) TEM QUE USAR O URI.PARSE PARA PEGAR OS DADOS DA URL
  var requisicao = await http.get(Uri.parse(url));

  // Converter a requisicao em obj JSON
  var dados = json.decode(requisicao.body);

  // criar lista de postagem
  List<Post> postagens = [];

  // laço de repeticao
  for (var objeto in dados) {
    // criar obje do tipo postagem
    Post p = Post();
    p.userId = objeto['UserId'];
    p.id = objeto['id'];
    p.title = objeto['title'];
    p.body = objeto['body'];

    // add obj no vetor de postagens
    postagens.add(p);
  }

  return postagens;
}
