import 'package:best_flutter_ui_templates/designCourse/categoryListView.dart';
import 'package:best_flutter_ui_templates/designCourse/courseInfoScreen.dart';
import 'package:best_flutter_ui_templates/designCourse/popularCourseListView.dart';
import 'package:best_flutter_ui_templates/main.dart';
import 'package:best_flutter_ui_templates/pages/favoritos_page.dart';
import 'package:best_flutter_ui_templates/pages/listas_page.dart';
import 'package:best_flutter_ui_templates/pages/login.page.dart';
import 'package:best_flutter_ui_templates/pages/perfil_page.dart';
import 'package:best_flutter_ui_templates/pages/preferencias_page.dart';
import 'package:flutter/material.dart';
import 'designCourseAppTheme.dart';

class DesignCourseHomeScreen extends StatefulWidget {
  @override
  _DesignCourseHomeScreenState createState() => _DesignCourseHomeScreenState();
}

class _DesignCourseHomeScreenState extends State<DesignCourseHomeScreen> {
  CategoryType categoryType = CategoryType.videos;

  //int _currentIndex = 0;
  //List<Widget> _tabList = [];
  int _selectedPage = 0;
  final _pageOptions = [
    Text('Home', style: TextStyle(fontSize: 36.0),),
    Text('LiSTA', style: TextStyle(fontSize: 36.0),),
    Text('Casdtras OA', style: TextStyle(fontSize: 36.0),),
  ];

  List<Container> listamos = List();
  var arreglox = [
    {"nombre": "AutoCAD", "imagen": "autocad.jpg", "deporte": ""},
    {"nombre": "Contabilidade", "imagen": "contabilidade.jpg", "deporte": ""},
    {"nombre": "Inglês", "imagen": "ingles.jpg", "deporte": ""},
    {"nombre": "Kotlin", "imagen": "kotlin.jpg", "deporte": ""},
    {"nombre": "Python", "imagen": "python.jpg", "deporte": ""},
    {"nombre": "Informática", "imagen": "informatica.jpeg", "deporte": ""},
    {"nombre": "Fotografía", "imagen": "fotografia.jpg", "deporte": ""},
    {"nombre": "Proceso de Ensino e Aprendizagem", "imagen": "ensino_aprendizagem.jpg", "deporte": ""},
    {"nombre": "Electrônica Digital", "imagen": "electronica.jpg", "deporte": ""},
    {"nombre": "Francês", "imagen": "frances.jpg", "deporte": ""},
    {"nombre": "Cozinha Brasileira", "imagen": "cozinha.jpg", "deporte": ""},
    {"nombre": "Marketing Digital", "imagen": "marketing.png", "deporte": ""},
    {"nombre": "Nutrição", "imagen": "nutricao.jpg", "deporte": ""},
    {"nombre": "Historia Peruana", "imagen": "historia.jpg", "deporte": ""},
    {"nombre": "Acidente Vascular Cerebral", "imagen": "avc.jpg", "deporte": ""},
  ];


  @override
  Widget build(BuildContext context) {
    return Container(
      color: DesignCourseAppTheme.nearlyWhite,
      child: Scaffold(
        appBar: new AppBar(
          title: new Text("Objetos de Aprendizagem App"), 
          backgroundColor: Colors.lightBlue,
          ),
        drawer: new Drawer(
        child: new ListView(
          children: <Widget>[
            new UserAccountsDrawerHeader(
              accountName: Text('Juliana Martins'),
              accountEmail: Text('julianamar@gmail.com'),
              currentAccountPicture: CircleAvatar(
                backgroundColor: Colors.lightBlue,
                child: Text(
                  'J',
                  style: TextStyle(fontSize: 40.0),
                ),
              ),
              /*decoration: new BoxDecoration(
                image: new DecorationImage(
                  fit: BoxFit.fill,
                  image: AssetImage('assets/images/user_woman.jpg')
                ),
              ),*/
            ),
            new Divider(),
            new ListTile(
              title: new Text("Perfil"),
              trailing: new Icon(Icons.person),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => Perfil(),
              )),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Favoritos"),
              trailing: new Icon(Icons.favorite),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => Favoritos(),
              )),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Listas"),
              trailing: new Icon(Icons.list),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => Listas(),
              )),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Meus Arquivos"),
              trailing: new Icon(Icons.school),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                //builder: (BuildContext context) => Nosotros(),
              )),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Preferências"),
              trailing: new Icon(Icons.settings),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => Preferencias(),
              )),
            ),
            new Divider(),
            new ListTile(
              title: new Text("Sair"),
              trailing: new Icon(Icons.exit_to_app),
              onTap: () => Navigator.of(context).push(new MaterialPageRoute(
                builder: (BuildContext context) => LoginPage(),
              )),
            ),
          ],
        ),
      ),
        backgroundColor: Colors.transparent,
        body: Column(
          children: <Widget>[
            SizedBox(
              height: MediaQuery.of(context).padding.top,
            ),
            //getAppBarUI(),
            Expanded(
              child: SingleChildScrollView(
                child: Container(
                  height: MediaQuery.of(context).size.height,
                  child: Column(
                    children: <Widget>[
                      getSearchBarUI(),
                      getCategoryUI(),
                      Flexible(
                        child: getPopularCourseUI(),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            
          ],
        ),
        //body: _pageOptions[_selectPage],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _selectedPage,
          onTap: (int index){
            setState((){
              _selectedPage = index;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              title: Text('Home'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.list),
              title: Text('Lista'),
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.create_new_folder),
              title: Text('Cadastrar OA'),
            ),
          ],
        ),
      ),
    );
  }


  Widget getCategoryUI() {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        Padding(
          padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
          child: Text(
            "Categorias",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 22,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
        ),
        SizedBox(
          height: 16,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Row(
            children: <Widget>[
              getButtonUI(CategoryType.videos, categoryType == CategoryType.videos),
              SizedBox(
                width: 8,
              ),
              getButtonUI(
                  CategoryType.livros, categoryType == CategoryType.livros),
              SizedBox(
                width: 8,
              ),
              getButtonUI(
                  CategoryType.artigos, categoryType == CategoryType.artigos),
              SizedBox(
                width: 8,
              ),
              getButtonUI(
                  CategoryType.audios, categoryType == CategoryType.audios),
              SizedBox(
                width: 8,
              ),
              getButtonUI(
                  CategoryType.games, categoryType == CategoryType.games),
            ],
          ),
        ),
        SizedBox(
          height: 16,
        ),
        CategoryListView(
          callBack: () {
            moveTo();
          },
        ),
      ],
    );
  }

  Widget getPopularCourseUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 16),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Text(
            "Temas Populares",
            textAlign: TextAlign.left,
            style: TextStyle(
              fontWeight: FontWeight.w600,
              fontSize: 20,
              letterSpacing: 0.27,
              color: DesignCourseAppTheme.darkerText,
            ),
          ),
          Flexible(
            child: PopularCourseListView(
              callBack: () {
                moveTo();
              },
            ),
          )
        ],
      ),
    );
  }

  void moveTo() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => CourseInfoScreen(),
      ),
    );
  }

  Widget getButtonUI(CategoryType categoryTypeData, bool isSelected) {
    var txt = '';
    if (CategoryType.videos == categoryTypeData) {
      txt = 'Vídeo';
    } else if (CategoryType.livros == categoryTypeData) {
      txt = 'Livro';
    } else if (CategoryType.artigos == categoryTypeData) {
      txt = 'Artigo';
    } else if (CategoryType.audios == categoryTypeData) {
      txt = 'Áudio';
    } else if (CategoryType.games == categoryTypeData) {
      txt = 'Game';
    }
    return Expanded(
      child: Container(
        decoration: new BoxDecoration(
            color: isSelected
                ? DesignCourseAppTheme.nearlyBlue
                : DesignCourseAppTheme.nearlyWhite,
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
            border: new Border.all(color: DesignCourseAppTheme.nearlyBlue)),
        child: Material(
          color: Colors.transparent,
          child: InkWell(
            splashColor: Colors.white24,
            borderRadius: BorderRadius.all(Radius.circular(24.0)),
            onTap: () {
              setState(() {
                categoryType = categoryTypeData;
              });
            },
            child: Padding(
              padding:
                  EdgeInsets.only(top: 12, bottom: 12, left: 18, right: 18),
              child: Center(
                child: Text(
                  txt,
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 12,
                    letterSpacing: 0.27,
                    color: isSelected
                        ? DesignCourseAppTheme.nearlyWhite
                        : DesignCourseAppTheme.nearlyBlue,
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }

  Widget getSearchBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Container(
            width: MediaQuery.of(context).size.width * 0.75,
            height: 64,
            child: Padding(
              padding: const EdgeInsets.only(top: 8, bottom: 8),
              child: Container(
                decoration: new BoxDecoration(
                  color: HexColor('#F8FAFB'),
                  borderRadius: BorderRadius.only(
                    bottomRight: Radius.circular(13.0),
                    bottomLeft: Radius.circular(13.0),
                    topLeft: Radius.circular(13.0),
                    topRight: Radius.circular(13.0),
                  ),
                ),
                child: Row(
                  children: <Widget>[
                    Expanded(
                      child: new Container(
                        padding: EdgeInsets.only(left: 16, right: 16),
                        child: new TextFormField(
                          style: TextStyle(
                            fontFamily: 'WorkSans',
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: DesignCourseAppTheme.nearlyBlue,
                          ),
                          keyboardType: TextInputType.text,
                          decoration: new InputDecoration(
                            labelText: 'Procurar OAs',
                            border: InputBorder.none,
                            helperStyle: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: HexColor('#B9BABC'),
                            ),
                            labelStyle: TextStyle(
                              fontWeight: FontWeight.w600,
                              fontSize: 16,
                              letterSpacing: 0.2,
                              color: HexColor('#B9BABC'),
                            ),
                          ),
                          onEditingComplete: () {},
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 60,
                      height: 60,
                      child: Icon(Icons.search, color: HexColor('#B9BABC')),
                    )
                  ],
                ),
              ),
            ),
          ),
          Expanded(
            child: SizedBox(),
          )
        ],
      ),
    );
  }

  Widget getAppBarUI() {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0, left: 18, right: 18),
      child: Row(
        children: <Widget>[
          Padding(
            padding: EdgeInsets.only(top: 8, right: 8),
            child: Container(
              width: AppBar().preferredSize.height - 8,
              height: AppBar().preferredSize.height - 8,
              color: Colors.white,
              child: Material(
                color: Colors.transparent,
                child: InkWell(
                  borderRadius:
                      new BorderRadius.circular(AppBar().preferredSize.height),
                  child: Icon(
                    Icons.view_list,
                  ),
                  //  multiple ? Icons.dashboard : Icons.view_agenda,
                  //  color: AppTheme.dark_grey,
                  //),
                  onTap: () {
                   // setState(() {
                   //   multiple = !multiple;
                  //  });
                  },
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Selecione seu",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    letterSpacing: 0.2,
                    color: DesignCourseAppTheme.grey,
                  ),
                ),
                Text(
                  "Objeto de Apendizagem",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 20,
                    letterSpacing: 0.27,
                    color: DesignCourseAppTheme.darkerText,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 60,
            height: 60,
            child: Image.asset('assets/images/user_woman.jpg'),
          )
        ],
      ),
    );
  }
}

enum CategoryType {
  videos,
  livros,
  artigos,
  audios,
  games,
}
