import 'package:flutter/material.dart';
import 'package:news_app/models/articleModel.dart';

class newsTitle extends StatelessWidget {
  const newsTitle({super.key, required this.articleModel});

  final ArticleModel articleModel;
  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child:  articleModel.image != null
      ?Image.network(
            articleModel.image!,
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Text('Error');
            },
          ):Image.asset(
          'assets/general.avif',
          height: 200,
          width: double.infinity,
          fit: BoxFit.cover,
        ),
        ),
        const SizedBox(
          height: 12,
        ),
          Text(
          articleModel.title,
          maxLines: 2, //عشان اتحكم فى عدد الاسطر بتاع النص
          overflow: TextOverflow.ellipsis,
          style: const TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
          Text(
          articleModel.description??'',
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}