import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articleModel.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_title.dart';

class newsListView extends StatelessWidget {
    List<ArticleModel> articles = [];
  newsListView({super.key,required this.articles});


  @override
  Widget build(BuildContext context) {
    return SliverList(
            delegate: SliverChildBuilderDelegate(childCount: articles.length,
                (context, index) {
            return Padding(
              padding: EdgeInsets.all(8.0),
              child: newsTitle(
                articleModel: articles[index],
              ),
            );
          }));
  }
}
