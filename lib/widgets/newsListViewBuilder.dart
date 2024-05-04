import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:news_app/models/articleModel.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/newsListView.dart';

class newsListViewBuilder extends StatefulWidget {
  const newsListViewBuilder({
    super.key,
  });

  @override
  State<newsListViewBuilder> createState() => _newsListViewBuilderState();
}

class _newsListViewBuilderState extends State<newsListViewBuilder> {
  
  var future;
  @override
  void initState() {
    super.initState();
    future=NewsService(Dio()).getGeneralNews();
  }
  
  
  @override
  Widget build(BuildContext context) {
    return FutureBuilder<List<ArticleModel>>(
        future: future,
        builder: (context, snapshot) {
          if (snapshot.hasData) {
            return newsListView(articles: snapshot.data!);
          } else if (snapshot.hasError) {
            return const SliverToBoxAdapter(
              child: Center(
                  child: Text(
                'oops there was an Error,Try later',
                style: TextStyle(fontSize: 20),
              )),
            );
          } else {
            return const SliverToBoxAdapter(
                child: Center(child: CircularProgressIndicator()));
          }
        });
  }
}
