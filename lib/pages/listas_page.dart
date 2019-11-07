import 'package:flutter/material.dart';
import 'package:best_flutter_ui_templates/pages/lista.dart';

class Listas extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(title: new Text("Minhas Listas"),
      ),
      body: ListView.builder (
        itemBuilder: (context, position){
          return
            GestureDetector(
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => Lista(),
              )),
              child: Card(
                  child: Padding(
                    padding: EdgeInsets.all(10.0),
                    child: Column(
                      children: <Widget>[
                        Row(
                            children: <Widget>[
                              Text(
                                "Aprendizado de Máquina",
                                style: TextStyle(fontSize: 20),
                                textAlign: TextAlign.left,
                              ),
                            ]
                        ),
                        Row(
                          children: <Widget>[
                            Expanded(
                              child:  Text(
                                "Criado em  05/03/2018",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            Expanded(
                              child:  Text(
                                "itens: 50",
                                style: TextStyle(fontSize: 12),
                              ),
                            ),
                            Row(
                              children: <Widget>[
                                Icon(Icons.music_note),
                                Icon(Icons.note_add),
                                Icon(Icons.movie),
                                Icon(Icons.book),
                                Icon(Icons.games),
                                Icon(Icons.link),

                              ],
                            )

                          ],

                        ),
                      ],
                    ),
                  )
              ),
            );
        },
        itemCount: 10,
      ),
    );
  }
}