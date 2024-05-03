class ArticleModel {
  final String? image;
  final String title;
  final String? description;
  final Source? source;

  ArticleModel(
      {required this.source,required this.image, required this.title, required this.description});
}

class Source {
  final String id;
  final String name;
  Source({required this.id, required this.name});
}
