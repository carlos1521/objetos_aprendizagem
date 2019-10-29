class Category {
  String title;
  String data;
  int money;
  double rating;
  String imagePath;

  Category({
    this.title = '',
    this.imagePath = '',
    this.data = '',
    this.money = 0,
    this.rating = 0.0,
  });

  static List<Category> categoryList = [
    Category(
      imagePath: 'assets/images/autocad.jpg',
      title: 'AutoCAD',
      data: '24/10/2019',
      money: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/images/contabilidade.jpg',
      title: 'Contabilidade',
      data: '15/08/2018',
      money: 18,
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/images/electronica.jpg',
      title: 'Electrônica Digital',
      data: '10/12/2015',
      money: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/images/kotlin.jpg',
      title: 'Kotlin',
      data: '21/05/2018',
      money: 18,
      rating: 4.6,
    ),
  ];

  static List<Category> popularCourseList = [
    Category(
      imagePath: 'assets/images/autocad.jpg',
      title: 'AutoCAD',
      data: '24/10/2019',
      money: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/images/contabilidade.jpg',
      title: 'Contabilidade',
      data: '15/08/2018',
      money: 18,
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/images/electronica.jpg',
      title: 'Electrônica Digital',
      data: '10/12/2015',
      money: 25,
      rating: 4.3,
    ),
    Category(
      imagePath: 'assets/images/kotlin.jpg',
      title: 'Kotlin',
      data: '21/05/2018',
      money: 18,
      rating: 4.6,
    ),
    Category(
      imagePath: 'assets/images/ensino_aprendizagem.jpg',
      title: 'Ensino Aprendizagem',
      data: '15/08/2018',
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/images/marketing.png',
      title: 'Marketing Digital',
      data: '15/08/2018',
      money: 208,
      rating: 4.9,
    ),
    Category(
      imagePath: 'assets/images/frances.jpg',
      title: 'Francês em 3 meses',
      data: '10/12/2015',
      money: 25,
      rating: 4.8,
    ),
    Category(
      imagePath: 'assets/images/historia.jpg',
      title: 'Historia Peruana',
      data: '21/05/2018',
      money: 208,
      rating: 4.9,
    ),
  ];
}
