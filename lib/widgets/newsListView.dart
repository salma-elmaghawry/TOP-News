import 'package:flutter/material.dart';
import 'package:news_app/models/articleModel.dart';
import 'package:news_app/services/news_service.dart';
import 'package:news_app/widgets/news_title.dart';

class newsListView extends StatefulWidget {
  newsListView({
    super.key,
  });

  @override
  State<newsListView> createState() => _newsListViewState();
}

class _newsListViewState extends State<newsListView> {
  List<ArticleModel> articles = [];
  @override
  void initState() async{
    super.initState();
    articles=await NewsService().getGeneralNews();
  }

  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(
          childCount: articles.length,
            (context, index) {
      return  Padding(
        padding: EdgeInsets.all(8.0),
        child: newsTitle(
          articleModel: articles[index],
        ),
      );
    }));
  }
}
