import 'package:flutter/material.dart';
import 'package:best_flutter_ui_templates/designCourse/courseInfoScreen.dart';
import 'package:best_flutter_ui_templates/designCourse/designCourseAppTheme.dart';
import 'package:best_flutter_ui_templates/designCourse/popularCourseListView.dart';
import 'package:share/share.dart';

import '../main.dart';

class Todo extends StatefulWidget {
  _TodoState createState() => _TodoState();
}

class _TodoState extends State<Todo> {

  List<Container> listamos = List();

  var arreglox = [
    {"nombre": "AutoCAD", "tipo": "Video", "imagen": "autocad.jpg", "descripcion": "Descripcion de OA Autocad......", "ranking": "4.5", "autor": "cramirezb", "datacriacao": "05/01/2019"},
    {"nombre": "Acidente Cardio Vascular", "tipo": "Artigo", "imagen": "avc.jpg", "descripcion": "Descripcion de OA AVC......", "ranking": "4.7", "autor": "wandersonmed", "datacriacao": "05/01/2017"},
    {"nombre": "Contabilidade", "tipo": "Site", "imagen": "contabilidade.jpg", "descripcion": "Descripcion de OA Contabilidade......", "ranking": "4.3", "autor": "cramirezb", "datacriacao": "05/01/2018"},
    {"nombre": "Cozinha", "tipo": "Video", "imagen": "cozinha.jpg", "descripcion": "Descripcion de OA cozinha brasileira......", "ranking": "3.5", "autor": "wandersonmed", "datacriacao": "05/01/2015"},
    {"nombre": "Electrônica Digital", "tipo": "Livro", "imagen": "electronica.jpg", "descripcion": "Descripcion de OA electrônica digital......", "ranking": "3.0", "autor": "cramirezb", "datacriacao": "05/01/2018"},
    {"nombre": "Ensino e Aprendizagem", "tipo": "Artigo", "imagen": "ensino_aprendizagem.jpg", "descripcion": "Descripcion de OA ensino e aprendizagem......", "ranking": "5.0", "autor": "wandersonmed", "datacriacao": "05/01/2019"},
    {"nombre": "Fotografía", "tipo": "Site", "imagen": "fotografia.jpg", "descripcion": "Descripcion de OA fotografia......", "ranking": "4.0", "autor": "cramirezb", "datacriacao": "05/01/2017"},
    {"nombre": "Francês", "tipo": "Audio", "imagen": "frances.jpg", "descripcion": "Descripcion de OA francês........", "ranking": "2.1", "autor": "wandersonmed", "datacriacao": "05/01/2019"},
    {"nombre": "Historia do Perú", "tipo": "Game", "imagen": "historia.jpg", "descripcion": "Descripcion de OA historia do Peru......", "ranking": "3.0", "autor": "cramirezb", "datacriacao": "05/01/2019"},
    {"nombre": "Informática para Crianças", "tipo": "Game", "imagen": "informatica.jpeg", "descripcion": "Descripcion de OA Informatica para crianças......", "ranking": "4.5", "autor": "leandrolsmo", "datacriacao": "05/01/2019"},
    {"nombre": "Inglês", "tipo": "Video", "imagen": "ingles.jpg", "descripcion": "Descripcion de OA ingles basico......", "ranking": "4.8", "autor": "wandersonmed", "datacriacao": "05/01/2016"},
    {"nombre": "Kotlin Avançado", "tipo": "Livro", "imagen": "kotlin.jpg", "descripcion": "Descripcion de OA kotlin avançado......", "ranking": "3.7", "autor": "cramirezb", "datacriacao": "05/01/2020"},
    {"nombre": "Marketing Digital", "tipo": "Livro", "imagen": "marketing.png", "descripcion": "Descripcion de OA marketing digital......", "ranking": "4.1", "autor": "leandrolsmo", "datacriacao": "05/01/2016"},
    {"nombre": "Nutrição em Gravidas", "tipo": "Audio", "imagen": "nutricao.jpg", "descripcion": "Descripcion de OA nutrição para gravidas......", "ranking": "1.9", "autor": "leandrolsmo", "datacriacao": "05/01/2019"},
    {"nombre": "Python", "tipo": "Site", "imagen": "python.jpg", "descripcion": "Descripcion de OA python......", "ranking": "4.9", "autor": "leandrolsmo", "datacriacao": "05/01/2014"},
  ];

  _listado() async {
    for (var i = 0; i < arreglox.length; i++) {
      final arregloxyz = arreglox[i];
      final String imagen = arregloxyz["imagen"];
      final String tipo = arregloxyz["tipo"];
      final String datacriacao = arregloxyz["datacriacao"];

      listamos.add(new Container(
        //padding: new EdgeInsets.all(10.0),
        child: new Card(
          child: new Column(
            children: <Widget>[
              new Hero(
                tag: arregloxyz['nombre'],
                child: new Material(
                  child: InkWell(
                    splashColor: Colors.transparent,
                    onTap: () =>
                        Navigator.of(context).push(new MaterialPageRoute(
                          builder: (BuildContext context) => new Detalle(
                              nombre: arregloxyz['nombre'],
                              tipo: tipo,
                              imagen: imagen,
                              descripcion: arregloxyz['descripcion'],
                              ranking: arregloxyz['ranking'],
                              autor: arregloxyz['autor'],
                              datacriacao: datacriacao
                          ),
                        )),
                    child: SizedBox(
                      height: 220,
                      child: Stack(
                        alignment: AlignmentDirectional.bottomCenter,
                        children: <Widget>[
                          Container(
                            child: Column(
                              children: <Widget>[
                                Expanded(
                                  child: Container(
                                    decoration: new BoxDecoration(
                                      color: HexColor('#F8FAFB'),
                                      borderRadius:
                                      BorderRadius.all(Radius.circular(16.0)),
                                      // border: new Border.all(
                                      //     color: DesignCourseAppTheme.notWhite),
                                    ),
                                    child: Column(
                                      children: <Widget>[
                                        Expanded(
                                          child: Container(
                                            child: Column(
                                              children: <Widget>[
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 16, left: 16, right: 16),
                                                  child: Text(
                                                      arregloxyz['nombre'],//NOMBRE DEL OBJETO DE APRENDIZAJE
                                                    textAlign: TextAlign.left,
                                                    style: TextStyle(
                                                      fontWeight: FontWeight.w600,
                                                      fontSize: 16,
                                                      letterSpacing: 0.27,
                                                      color: DesignCourseAppTheme
                                                          .darkerText,
                                                    ),
                                                  ),
                                                ),
                                                Padding(
                                                  padding: const EdgeInsets.only(
                                                      top: 8, left: 16, right: 16, bottom: 8),
                                                  child: Column(
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    children: <Widget>[
                                                      Text(
                                                        "Data Criação: $datacriacao",
                                                        textAlign: TextAlign.left,
                                                        style: TextStyle(
                                                          fontWeight: FontWeight.w200,
                                                          fontSize: 10,
                                                          letterSpacing: 0.27,
                                                          color: DesignCourseAppTheme.grey,
                                                        ),
                                                      ),
                                                      Container(
                                                        child: Row(
                                                          children: [
                                                            Expanded(
                                                              /*1*/
                                                              child: Column(
                                                                crossAxisAlignment: CrossAxisAlignment.start,
                                                                children: [
                                                                  /*2*/
                                                                  Container(
                                                                    padding: const EdgeInsets.only(bottom: 8),
                                                                    child: Text(
                                                                      "Tipo: $tipo",
                                                                      style: TextStyle(
                                                                        fontWeight: FontWeight.normal,
                                                                        fontSize: 12,
                                                                      ),
                                                                    ),
                                                                  ),
                                                                ],
                                                              ),
                                                            ),
                                                            /*3*/
                                                            Icon(
                                                              Icons.star,
                                                              color: Colors.orange,
                                                            ),
                                                            Text(arregloxyz['ranking']),
                                                          ],
                                                        ),
                                                      )
                                                    ],
                                                  ),
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        SizedBox(
                                          width: 48,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(
                                  height: 48,
                                ),
                              ],
                            ),
                          ),
                          Container(
                            child: Padding(
                              padding:
                              const EdgeInsets.only(top: 24, right: 16, left: 16),
                              child: Container(
                                decoration: BoxDecoration(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                                  boxShadow: <BoxShadow>[
                                    BoxShadow(
                                        color: DesignCourseAppTheme.grey
                                            .withOpacity(0.2),
                                        offset: Offset(0.0, 0.0),
                                        blurRadius: 6.0),
                                  ],
                                ),
                                child: ClipRRect(
                                  borderRadius:
                                  BorderRadius.all(Radius.circular(16.0)),
                                  child: AspectRatio(
                                      aspectRatio: 1.28,
                                      child: Image.asset("assets/images/$imagen")),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ));
    }
  }

  @override
  void initState() {
    _listado();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //appBar: new AppBar(title: new Text('Fitness 2019®'), backgroundColor: Colors.orange,),
      body: new GridView.count(
        crossAxisCount: 2, //numero de columas de la primera pagina pruebn con 1
        mainAxisSpacing: 0.1, //espacio entre card
        childAspectRatio: 0.800, //espacio largo de cada card
        children: listamos,
      ),
    );
  }
}

class Detalle extends StatelessWidget {
  Detalle({this.nombre, this.tipo, this.imagen, this.descripcion, this.ranking, this.autor, this.datacriacao});
  final String nombre;
  final String tipo;
  final String imagen;
  final String descripcion;
  final String ranking;
  final String autor;
  final String datacriacao;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomPadding: false,
      body: new ListView(
        children: <Widget>[
        /*Material(
        color: Colors.transparent,
          child: InkWell(
            borderRadius: new BorderRadius.circular(
                AppBar().preferredSize.height),
            child: Icon(
              Icons.arrow_back_ios,
              color: DesignCourseAppTheme.nearlyBlack,
            ),
            onTap: () {
              Navigator.pop(context);
            },
          ),
        ),*/
          new Container(
              height: 300.0,//tamaño de la imagem dentro de cada Card
              child: new Hero(
                tag: nombre,
                child: new Material(
                  child: new InkWell(
                    child: new Image.asset(
                      "assets/images/$imagen",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              )),
          new IniciarNombre(
            nombre: nombre,
            autor: autor,
            datacriacao: datacriacao,
            ranking: ranking,
          ),
          new IniciarIcon(),
          new Informacion(
            descripcion: descripcion,
          ),
        ],
      ),
    );
  }

}

class IniciarNombre extends StatelessWidget {
  IniciarNombre({this.nombre,this.autor,this.datacriacao,this.ranking});
  final String nombre;
  final String autor;
  final String datacriacao;
  final String ranking;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        children: <Widget>[
          new Expanded(
            child: new Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                new Text(
                  nombre,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 24,
                    letterSpacing: 0.27,
                    color: DesignCourseAppTheme.darkerText,
                  ),
                ),
                new Text(
                  "Autor: $autor",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 14,
                    letterSpacing: 0.27,
                    color: DesignCourseAppTheme.nearlyBlue,
                  ),
                ),
                new Text(
                  "Data Criação: $datacriacao",
                  style: TextStyle(
                    fontWeight: FontWeight.w200,
                    fontSize: 14,
                    letterSpacing: 0.27,
                    color: DesignCourseAppTheme.grey,
                  ),
                ),
              ],
            ),
          ),
          new Row(
            children: <Widget>[
              new Icon(//icono que agrega estrellas calificacion
                Icons.star,
                size: 30.0,
                color: Colors.orange,
              ),
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.orange,
              ),
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.orange,
              ),
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.orange,
              ),
              new Icon(
                Icons.star,
                size: 30.0,
                color: Colors.orange,
              ),
              new Text(
                ranking,
                style: new TextStyle(fontSize: 18.0),
              )
            ],
          )
        ],
      ),
    );
  }
}

class IniciarIcon extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: new EdgeInsets.all(10.0),
      child: new Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          Column(
            children: [
              IconButton(
                  icon: Icon(Icons.share),
                  iconSize: 38.0,
                  color: Colors.blue,
                  onPressed: (){
                    Share.share("Share with");
                  },
              ),
              Text(
                'Compartilhar',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 12,
                  letterSpacing: 0.27,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.favorite),
                iconSize: 38.0,
                color: Colors.blue,
                onPressed: (){},
              ),
              Text(
                'Favorito',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 12,
                  letterSpacing: 0.27,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
          Column(
            children: [
              IconButton(
                icon: Icon(Icons.add),
                iconSize: 38.0,
                color: Colors.blue,
                onPressed: (){},
              ),
              Text(
                'Adicionar',
                style: TextStyle(
                  fontWeight: FontWeight.w200,
                  fontSize: 12,
                  letterSpacing: 0.27,
                  color: Colors.blue,
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}

class IconTec extends StatelessWidget {
  IconTec({this.icon, this.tec});
  final IconData icon;
  final String tec;
  @override
  Widget build(BuildContext context) {
    return new Expanded(
      child: new Column(
        children: <Widget>[
          new Icon(
            icon,
            size: 50.0,
            color: Colors.blue,
          ),
          new Text(
            tec,
            style: new TextStyle(fontSize: 12.0, color: Colors.blue),
          )
        ],
      ),
    );
  }
}

class Informacion extends StatelessWidget {
  Informacion({this.descripcion});
  final String descripcion;
  @override
  Widget build(BuildContext context) {
    return Container(
      height: 500,
      padding: new EdgeInsets.all(10.0),
      child: new Card(
        child: new Padding(
          padding: const EdgeInsets.all(10.0),
          child: new Text(
            descripcion,
            style: new TextStyle(fontSize: 16.0, color: Colors.grey[800]),
          ),
        ),
      ),
    );
  }
}

