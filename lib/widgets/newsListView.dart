import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_title.dart';

class newsListView extends StatelessWidget {
  newsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SliverList(
        delegate: SliverChildBuilderDelegate(childCount: 10, (context, index) {
      return const Padding(
        padding: EdgeInsets.all(8.0),
        child: newsTitle(),
      );
    }));
  }
}
