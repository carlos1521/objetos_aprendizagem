class Category {
  String codigo;
  String tipo; //1.video, 2.livro, 3.audio, 4.artigo, 5.site, 6.game
  String title;
  String imagePath;
  String data;
  String descricao;
  double rating;
  
  Category({
    this.codigo = '',
    this.tipo = '',
    this.title = '',
    this.imagePath = '',
    this.data = '',
    this.descricao = '',
    this.rating = 0.0,
  });

//ESTA PARTE NAO DEVE SER REMOVIDA NEM MODIFICADA, NAO AFETA EN NADA DAS TELAS EXISTENTES
  static List<Category> categoryList = [
    Category(
      imagePath: 'assets/images/autocad.jpg',
      title: 'AutoCAD',
      data: '24/10/2019',
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/images/contabilidade.jpg',
      title: 'Contabilidade',
      data: '15/08/2018',
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/images/electronica.jpg',
      title: 'Electrônica Digital',
      data: '10/12/2015',
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/images/kotlin.jpg',
      title: 'Kotlin',
      data: '21/05/2018',
      rating: 4.6,
    ),
  ];

  static List<Category> popularCourseList = [
    Category(
      codigo: '1',
      tipo: 'video',
      title: 'AutoCAD',
      imagePath: 'assets/images/autocad.jpg',
      data: '24/10/2019',
      descricao: 'Descricao do autocad........',
      rating: 4.3,
    ),
    Category(
      codigo: '2',
      tipo: 'site',
      title: 'Contabilidade',
      imagePath: 'assets/images/contabilidade.jpg',
      data: '15/08/2018',
      descricao: 'Descricao de contabilidade........',
      rating: 3.6,
    ),
    Category(
      codigo: '3',
      tipo: 'artigo',
      title: 'Electrônica Digital',
      imagePath: 'assets/images/electronica.jpg',
      data: '10/12/2015',
      descricao: 'Descricao de electronica........',
      rating: 4.2,
    ),
    Category(
      codigo: '4',
      tipo: 'video',
      title: 'Kotlin',
      imagePath: 'assets/images/kotlin.jpg',
      data: '21/05/2018',
      descricao: 'Descricao de kotlin........',
      rating: 4.0,
    ),
    Category(
      codigo: '5',
      tipo: 'livro',
      title: 'Ensino Aprendizagem',
      imagePath: 'assets/images/ensino_aprendizagem.jpg',
      data: '15/08/2018',
      descricao: 'Descricao de ensino e aprendizagem........',
      rating: 3.8,
    ),
    Category(
      codigo: '6',
      tipo: 'artigo',
      title: 'Marketing Digital',
      imagePath: 'assets/images/marketing.png',
      data: '15/08/2018',
      descricao: 'Descricao de marketig........',
      rating: 3.1,
    ),
    Category(
      codigo: '7',
      tipo: 'audio',
      title: 'Francês em 3 meses',
      imagePath: 'assets/images/frances.jpg',
      data: '10/12/2015',
      descricao: 'Descricao de lingua francesa........',
      rating: 5.0,
    ),
    Category(
      codigo: '8',
      tipo: 'game',
      title: 'Historia Peruana',
      imagePath: 'assets/images/historia.jpg',
      data: '21/05/2018',
      descricao: 'Descricao de historia........',
      rating: 4.9,
    ),
  ];
}
