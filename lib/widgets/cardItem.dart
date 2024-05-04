import 'package:flutter/material.dart';
import 'package:news_app/models/categoryModel.dart';
import 'package:news_app/views/categoryView.dart';

class cardItem extends StatelessWidget {
  const cardItem({super.key, required this.category});
  final CategoryModel category;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.of(context).push(
          MaterialPageRoute(
            builder: (context) {
          return CategoryView(
            category: category.categoryName);
        }),);
      },
      child: Padding(
        padding: const EdgeInsets.only(right: 8, left: 6),
        child: Container(
          height: 120,
          width: 170,
          decoration: BoxDecoration(
              image: DecorationImage(
                  fit: BoxFit.fill, image: AssetImage(category.imageUrl)),
              borderRadius: BorderRadius.circular(12)),
          child: Center(
              child: Text(
            category.categoryName,
            style: const TextStyle(
              //fontStyle: FontStyle.italic,
              fontWeight: FontWeight.bold,
              color: Colors.white,
              fontSize: 20,
            ),
          )),
        ),
      ),
    );
  }
}
