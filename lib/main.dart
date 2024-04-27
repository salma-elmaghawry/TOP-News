import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/views/homeView.dart';

void main() {
  NewsService(Dio()).getGeneralNews();
  runApp(const NewsApp());
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
