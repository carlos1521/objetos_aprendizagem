import 'package:best_flutter_ui_templates/cadastroOA.dart';
import 'package:flutter/material.dart';

class MeusOA extends StatelessWidget{
  @override


  Widget build(BuildContext context){
    return Scaffold(
        appBar: new AppBar(title: new Text("Meus OAs"),
        ),
         body: new Container(
          child: new ListView(
          children: [
            Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.video_library),
                  title: Text('Historia do Brasil'),
                  subtitle: Text('Video explicativo da Historia do Brasil.'),
                ),
                ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Editar'),
                        onPressed: () { /* ... */ },
                      ),
                      FlatButton(
                        child: const Text('Eliminar'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.video_library),
                  title: Text('Descobrimento ou Conquista do Brasil'),
                  subtitle: Text('Uma professora de história para falar das polêmicas à respeito do Descobrimento do Brasil.'),
                ),
                ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Editar'),
                        onPressed: () { /* ... */ },
                      ),
                      FlatButton(
                        child: const Text('Eliminar'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.school),
                  title: Text('História geral do Brasil (Português)'),
                  subtitle: Text('A História Geral do Brasil é um balanço moderno, atual e renovador do conjunto da História do Brasil, com a participação de historiadores consagrados por suas pesquisas e livros .'),
                ),
                ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Editar'),
                        onPressed: () { /* ... */ },
                      ),
                      FlatButton(
                        child: const Text('Eliminar'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Card(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                const ListTile(
                  leading: Icon(Icons.games),
                  title: Text('Jogos de Geografia'),
                  subtitle: Text('Esta seção é dedicada ao aprendizado de um jeito descontraído, estimulando a capacidade de interpretação do conteúdo a partir de jogos.'),
                ),
                ButtonTheme.bar( // make buttons use the appropriate styles for cards
                  child: ButtonBar(
                    children: <Widget>[
                      FlatButton(
                        child: const Text('Editar'),
                        onPressed: () { /* ... */ },
                      ),
                      FlatButton(
                        child: const Text('Eliminar'),
                        onPressed: () { /* ... */ },
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),],
        ),
      ),
      floatingActionButton: FloatingActionButton(
      onPressed: () {
        new CadastroOA();
        //print('Clicked');
      },
      child: Icon(Icons.add),
      backgroundColor: Colors.blue,
    ),
        
    );
  }
}