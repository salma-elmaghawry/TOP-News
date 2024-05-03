import 'package:flutter/material.dart';
import 'package:news_app/widgets/categryListView.dart';
import 'package:news_app/widgets/newsListView.dart';
import 'package:news_app/widgets/news_title.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'TOP ',
              style: TextStyle(fontSize: 25, color:Color.fromARGB(255, 235, 60, 7)),
            ),
            Text('News', style: TextStyle(fontSize: 25, color: Colors.black)),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:  Padding(
        padding: EdgeInsets.all(7),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
            const SliverToBoxAdapter(child: CategoryListView()),
            const SliverToBoxAdapter(
              child: SizedBox(
                height: 25,
              ),
            ),
            newsListView(),
          ],
        ),
      ),
    );
  }
}

