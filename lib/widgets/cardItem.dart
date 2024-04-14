import 'package:flutter/material.dart';

class cardItem extends StatelessWidget {
  const cardItem({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(

      padding: const EdgeInsets.only(right: 10),
      child: Container(
        height: 100,
        width: 170,
        decoration:BoxDecoration(
          image: const DecorationImage(
            fit: BoxFit.fill,
            image: AssetImage('assets/sports.avif')),
          
          borderRadius: BorderRadius.circular(12)
        ),
        child: const Center(child: Text('Sports',style: TextStyle(
          fontStyle: FontStyle.italic,
          fontWeight: FontWeight.bold,
          color: Colors.white,fontSize:25 ,
        ),)),
      ),
    );
  }
}
