import 'package:flutter/material.dart';
import 'package:news_app/widgets/newsListViewBuilder.dart';

class CategoryView extends StatelessWidget {
  const CategoryView({super.key,required this.category});
final String category ;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      appBar: AppBar(title: Text("$category"),  backgroundColor:Color.fromARGB(255, 167, 66, 52),
      
      ),
      body: CustomScrollView(
        slivers: [
          newsListViewBuilder(category:category ,),
        ],
      )

    );

  }
}
