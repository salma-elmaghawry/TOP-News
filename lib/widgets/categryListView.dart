import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';
import 'package:news_app/widgets/cardItem.dart';

class CategoryListView extends StatelessWidget {
  const CategoryListView({
    super.key,
  });
  final List<CategoryModel> categories = const [
    CategoryModel(
        categoryName: "Technology", imageUrl: "assets/technology.jpeg"),
    CategoryModel(categoryName: "Health", imageUrl: "assets/health.avif"),
    CategoryModel(categoryName: "Business", imageUrl: "assets/business.avif"),
    CategoryModel(categoryName: "Entertaiment", imageUrl: "assets/entertaiment.avif"),
    CategoryModel(categoryName: "Sports", imageUrl: "assets/sports.avif"),
    CategoryModel(categoryName: "Science", imageUrl: "assets/science.avif"),
    CategoryModel(categoryName: "General", imageUrl: "assets/general.avif"),
  ];

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 90,
      child: ListView.builder(
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
