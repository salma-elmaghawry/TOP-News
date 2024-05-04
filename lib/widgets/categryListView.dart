import 'package:flutter/material.dart';
import 'package:news_app/models/categoryModel.dart';
import 'package:news_app/widgets/cardItem.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(categoryName: "Technology", imageUrl: "assets/technology.jpeg"),
    CategoryModel(categoryName: "Health", imageUrl: "assets/health.avif"),
    CategoryModel(categoryName: "Business", imageUrl: "assets/business8.jpg"),
    CategoryModel(categoryName: "Science", imageUrl: "assets/science.avif"),
    CategoryModel(categoryName: "Sports", imageUrl: "assets/sports.avif"),
    CategoryModel(categoryName: "Entertainment", imageUrl: "assets/entertaiment.avif"),
    CategoryModel(categoryName: "General", imageUrl: "assets/general.avif"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
        
        physics:const BouncingScrollPhysics() ,
          scrollDirection: Axis.horizontal,
          itemCount: categories.length,
          itemBuilder: (context, index) {
            return cardItem(
              category: categories[index],
            );
          }),
    );
  }
}
