import 'package:flutter/material.dart';

class Perfil extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: new AppBar(title: new Text("Perfil"),
      ),
      body: new Center(
        child: new Text("Em Manutenção"),
      )
    );
  }
}