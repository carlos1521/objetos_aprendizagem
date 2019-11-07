import 'package:flutter/material.dart';
import 'package:best_flutter_ui_templates/designCourse/designCourseAppTheme.dart';
import 'package:share/share.dart';
import 'package:video_player/video_player.dart';

import '../main.dart';

class Video extends StatefulWidget {
  _VideoState createState() => _VideoState();
}

class _VideoState extends State<Video> {

  VideoPlayerController controller;
  Future<void> futureController;

  List<Container> listamos = List();

  var arreglox = [
    {"nombre": "AutoCAD", "tipo": "Video", "imagen": "autocad.jpg", "descripcion": "Descripcion de OA Autocad......", "ranking": "4.5", "autor": "cramirezb", "datacriacao": "05/01/2019"},
    {"nombre": "Cozinha", "tipo": "Video", "imagen": "cozinha.jpg", "descripcion": "Descripcion de OA cozinha brasileira......", "ranking": "3.5", "autor": "wandersonmed", "datacriacao": "05/01/2015"},
    {"nombre": "Inglês", "tipo": "Video", "imagen": "ingles.jpg", "descripcion": "Descripcion de OA ingles basico......", "ranking": "4.8", "autor": "wandersonmed", "datacriacao": "05/01/2016"},
    {"nombre": "Flutter Tutorial for Beginners", "tipo": "Video", "imagen": "flutter.jpg", "descripcion": "Build iOS and Android Apps with Google's Flutter & Dart", "ranking": "4.9", "autor": "leandrolsmo", "datacriacao": "05/01/2017"},
    {"nombre": "Flutter Beginner App Development Tutorial", "tipo": "Video", "imagen": "flutter2.png", "descripcion": "Learn cross platform mobile app development for both iOS and Android with Flutter and the Dart programming language.", "ranking": "4.9", "autor": "cramirezb", "datacriacao": "05/01/2018"},
    {"nombre": "Dart Programming Tutorial - Full Course", "tipo": "Video", "imagen": "dart.jpg", "descripcion": "Learn the Dart programming language in this full tutorial for beginners. Dart is a strictly typed programming language that is used in the Flutter framework to develop cross platform mobile apps.", "ranking": "4.9", "autor": "cramirezb", "datacriacao": "05/01/2019"},
  ];

  _listado() async {
    for (var i = 0; i < arreglox.length; i++) {
      final arregloxyz = arreglox[i];
      final String imagen = arregloxyz["imagen"];
      final String tipo = arregloxyz["tipo"];
      final String datacriacao = arregloxyz["datacriacao"];
      final String autor = arregloxyz["autor"];

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
                              autor: autor,
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
                                                                      "Autor: $autor",
                                                                      style: TextStyle(
                                                                        fontWeight: FontWeight.normal,
                                                                        fontSize: 10,
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
    controller = VideoPlayerController.asset(
        "assets/images/video.mp4");
    futureController = controller.initialize();
    controller.setLooping(true);
    super.initState();
  }

  @override
  void dispose(){
    controller.dispose();
    super.dispose();
  }



  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
              height: 300.0,//tamaño de la segunda imagen
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

class Reproduzir extends StatelessWidget {
  Future<void> futureController;

  VideoPlayerController controller;


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Video Player'),
      ),
      body: Stack(
        children: <Widget>[
          Center(child: FutureBuilder(
            future: futureController,
            builder: (context,snapshot){
              if(snapshot.connectionState == ConnectionState.active)
                {
                  return VideoPlayer(controller);
                }
                else{
                  return Center(child: CircularProgressIndicator());
              }
            },
          )),
          Center(
            child: RaisedButton(
              onPressed: (){

              },
              child: Icon(
                controller.value.isPlaying ? Icons.pause : Icons.play_arrow
              ),
            ),
          ),
        ],

      ),
    );
  }

}


class IniciarNombre extends StatelessWidget {
  IniciarNombre({this.nombre,this.autor,this.ranking});
  final String nombre;
  final String autor;
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
                  style: new TextStyle(fontSize: 20.0, color: Colors.blue),
                ),
                new Text(
                  "Autor: $autor",
                  style: new TextStyle(fontSize: 15.0, color: Colors.blueGrey),
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
                icon: Icon(Icons.ondemand_video),
                iconSize: 38.0,
                color: Colors.blue,
                onPressed: () =>
                    Navigator.of(context).push(new MaterialPageRoute(
                      builder: (BuildContext context) => new Reproduzir(),
                    )),
              ),
              Text(
                'Reproduzir',
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

