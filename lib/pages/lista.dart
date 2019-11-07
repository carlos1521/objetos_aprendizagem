import 'package:flutter/material.dart';

class Lista extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(title: new Text("Aprendizado de Máquina"),
      ),
      body: GridView.count(
        crossAxisCount: 2,
        children: <Widget>[
          Center(
            child: Icon(Icons.movie, size: 100,) ,
          ),
          Center(
            child: Icon(Icons.book, size: 100 ) ,
          ),
          Center(
            child: Icon(Icons.music_note, size: 100) ,
          ),
          Center(
            child: Icon(Icons.note_add, size: 100) ,
          ),
          Center(
            child: Icon(Icons.link, size: 100) ,
          ),
          Center(
            child: Icon(Icons.games, size: 100) ,
          ),
        ],
      ),
    );
  }
}