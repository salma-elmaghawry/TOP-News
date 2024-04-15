import 'package:flutter/material.dart';
import 'package:news_app/widgets/news_title.dart';

class newsListView extends StatelessWidget {
  const newsListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      physics:const BouncingScrollPhysics() ,
        itemCount: 10,
        itemBuilder: (context, index) {
          return const Padding(
            padding:  EdgeInsets.only(bottom:22 ),
            child: newsTitle(),
          );
        });
  }
}
