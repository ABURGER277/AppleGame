import 'package:flutter/material.dart';

class InfinityGamePage extends StatelessWidget{
  const InfinityGamePage({ Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Infinity Game Page'),
      ),
      backgroundColor: Colors.blue[50],
      body: Center(child: ElevatedButton(onPressed: () {
        Navigator.pop(context);
      }, child: const Text(('돌아가기'))),)
    );
  }
}