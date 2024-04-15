import 'package:flutter/material.dart';


class newsTitle extends StatelessWidget {
  const newsTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(6),
          child: Image.network(
            'https://i.pinimg.com/564x/98/f9/ca/98f9ca9041fa6075a259496894f45457.jpg',
            height: 200,
            width: double.infinity,
            fit: BoxFit.cover,
            errorBuilder: (context, error, stackTrace) {
              return Text('Error,please check your internet connection');
            },
          ),
        ),
        const SizedBox(
          height: 12,
        ),
        const Text(
          'Loremkmckdnalfmakmfaknfjrnf,',
          maxLines: 2, //عشان اتحكم فى عدد الاسطر بتاع النص
          overflow: TextOverflow.ellipsis,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w500,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        const Text(
          'dkkkkkkkkkkkkkkds;amekdmkq',
          maxLines: 2,
          style: TextStyle(color: Colors.grey, fontSize: 14),
        )
      ],
    );
  }
}
