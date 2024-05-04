import 'package:flutter/material.dart';
import 'package:news_app/widgets/categryListView.dart';
import 'package:news_app/widgets/newsListViewBuilder.dart';

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
              style: TextStyle(
                  fontSize: 25, color:Color(0xffE72929)
            ),),
            Text('News', style: TextStyle(fontSize: 25, color: Colors.black)),
        ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body:const   Padding(
        padding: EdgeInsets.all(7),
        child: CustomScrollView(
          physics: BouncingScrollPhysics(),
          slivers: [
              SliverToBoxAdapter(child: CategoryListView()),
              SliverToBoxAdapter(
              child: SizedBox(
                height: 25,
              ),
            ),
            newsListViewBuilder(category:'general' ,),
          ],
        ),
      ),
    );
  }
}

