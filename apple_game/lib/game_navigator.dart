import 'package:apple_game/general_game.dart';
import 'package:apple_game/infinity_game.dart';
import 'package:flutter/material.dart';

class GameNavigatorPage extends StatelessWidget{
  const GameNavigatorPage({ Key? key}) : super(key: key);

  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Game Navigator Page'),
      ),
      backgroundColor: Colors.blue[50],
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // General mode
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GeneralGamePage()),
                );
              }, 
              child: const Text(('일반 모드'))),
            // Infinity mode
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const InfinityGamePage()),
                );
              }, 
              child: const Text('무한 모드'))
          ]
        ),
      ),
    );
  }
}