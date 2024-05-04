class ArticleModel {
  final String? image;
  final String title;
  final String? description;

  ArticleModel(
      {required this.image, required this.title, required this.description});

//named constructor
//factory بيسمحلى انى اعمل return ل object
  factory ArticleModel.fromJson(json) {
    return ArticleModel(
          image: json['urlToImage'],
          title: json['title'],
          description:json['description'],
        );
    
  }
}
