import 'package:dio/dio.dart';

class NewsService {
  final Dio dio;
  NewsService(this.dio);

  getGeneralNews()async{
    Response response = await dio.get(
      'https://newsapi.org/v2/top-headlines?apiKey=cd8ebc8ba0c549788bffa0647702502f&country=eg&category=general');
  }
}
