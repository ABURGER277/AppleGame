import 'package:apple_game/game.dart';
import 'package:apple_game/ranking.dart';
import 'package:apple_game/setting.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(), // HomePage를 별도로 분리
    );
  }
}

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('사과 게임'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            ElevatedButton(
              onPressed: () {
                // 버튼 1의 동작
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const GamePage()),
                );
              },
              child: Text('게임 시작'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // 버튼 2의 동작
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const RankingPage()),
                );
              },
              child: Text('랭킹 보기'),
            ),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // SettingPage로 이동
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => const SettingPage()),
                );
              },
              child: Text('환경 설정'),
            ),
          ],
        ),
      ),
    );
  }
}