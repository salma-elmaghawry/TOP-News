import 'package:flutter/material.dart';
import 'package:news_app/widgets/categryListView.dart';

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
              'News',
              style: TextStyle(fontSize: 23, color: Colors.black),
            ),
            Text('Cloud', style: TextStyle(fontSize: 23, color: Colors.amber)),
          ],
        ),
        centerTitle: true,
        backgroundColor: Colors.transparent,
        elevation: 0,
      ),
      body: CategoryListView(),
    );
  }
}


