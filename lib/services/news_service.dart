import 'package:dio/dio.dart';
import 'package:news_app/models/articleModel.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);
  getGeneralNews() async {
    Response response = await dio.get(
        'https://newsapi.org/v2/top-headlines?country=us&apiKey=cd8ebc8ba0c549788bffa0647702502f');
    Map<String, dynamic> jsonData = response.data;
    //list of maps
    List<dynamic> articles = jsonData['articles'];
    List<ArticleModel> articlesList = [];
    //convert map to article object

    for (var article in articles) {
      ArticleModel article_model = ArticleModel(
          image: article['urlToImage'],
          title: article['title'],
          description: article['description'],
          source: Source(
              id: article['source']['id'], name: article['source']['name']));

      articlesList.add(article_model);
    }
    print(articlesList);
  }
}
