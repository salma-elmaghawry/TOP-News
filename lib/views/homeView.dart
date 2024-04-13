import 'package:flutter/material.dart';

class homeView extends StatelessWidget {
  const homeView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text('Fresh ',
              style: TextStyle(
              fontSize: 23,color: Colors.amber)),
              Text('News',
          style: TextStyle(
          fontSize: 23,color: Colors.black),),
          ],
        ),
        centerTitle: true,
        backgroundColor:Colors.transparent ,
        elevation: 0,
      ),
      
    );
  }
}
