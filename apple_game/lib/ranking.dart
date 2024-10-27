import 'package:flutter/material.dart';

class RankingPage extends StatelessWidget{
  const RankingPage({ Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Ranking Page'),
      ),
      backgroundColor: Colors.blue[50],
      body: Center(child: ElevatedButton(onPressed: () {
        Navigator.pop(context);
      }, child: const Text(('돌아가기'))),)
    );
  }
}