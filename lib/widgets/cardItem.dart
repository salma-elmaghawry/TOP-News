import 'package:flutter/material.dart';
import 'package:news_app/models/category_model.dart';

class cardItem extends StatelessWidget {
  const cardItem({
    super.key, required this.category
  });
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 100,
        width: 170,
        decoration: BoxDecoration(
            image:  DecorationImage(
                fit: BoxFit.fill, image: AssetImage(category.imageUrl)),
            borderRadius: BorderRadius.circular(12)),
        child:  Center(
            child: Text(
          category.categoryName,
          style: const TextStyle(
            fontStyle: FontStyle.italic,
            fontWeight: FontWeight.bold,
            color: Colors.white,
            fontSize: 20,
          ),
        )),
      ),
    );
  }
}