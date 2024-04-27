import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/views/homeView.dart';

void main() {
  getNews();
  runApp(const NewsApp());
}

final dio = Dio();

void getNews() async {
  final response = await dio.get('https://newsapi.org/v2/everything?q=sports&from=2024-03-27&sortBy=publishedAt&apiKey=cd8ebc8ba0c549788bffa0647702502f');
  print(response);
}

class NewsApp extends StatelessWidget {
  const NewsApp({super.key});
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      debugShowCheckedModeBanner: false,
      home: homeView(),
    );
  }
}
