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
  List<ArticleModel> articles = [];
  bool isLoading = true;
  @override
  void initState() {
    super.initState();
    getGeneralNews();
  }

  Future<void> getGeneralNews() async {
    articles = await NewsService(Dio()).getGeneralNews();
    isLoading = false;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return  isLoading?const  SliverToBoxAdapter(
      child: Center(child: CircularProgressIndicator())):
        articles.isNotEmpty ?newsListView(articles:articles,
        ):const Center(child:
          SliverToBoxAdapter(child: 
          Text('oops there was an error,try later'),));
  }
}
