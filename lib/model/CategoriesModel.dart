import 'dart:ui';

class CategoriesModel {
  String id;
  String imagePath;
  Color color;
  String title;
  CategoriesModel(this.color, this.imagePath, this.title, this.id);

  static List<CategoriesModel> getAllCategories(){
    return [
      CategoriesModel(Color(0xffC91C22), 'assets/images/ball.png', 'Sports', 'sports'),
      CategoriesModel(Color(0xff003E90), 'assets/images/Politics.png', 'Entertainment', 'entertainment'),
      CategoriesModel(Color(0xffED1E79), 'assets/images/health.png', 'Health', 'health'),
      CategoriesModel(Color(0xffCF7E48), 'assets/images/bussines.png', 'Business', 'business'),
      CategoriesModel(Color(0xff4882CF), 'assets/images/environment.png', 'Technology', 'technology'),
      CategoriesModel(Color(0xffF2D352), 'assets/images/science.png', 'Science', 'science'),
    ];
  }
}
