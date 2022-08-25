// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false, // 앱 바의 텍스트 중앙 정렬 해제
          backgroundColor: Colors.blue.shade700,
          elevation: 0, // 앱 바의 z축 높이 조절
          title: Padding(
            padding: EdgeInsets.all(8),
            child: Text(
              '내 정보 앱',
              style: TextStyle(color: Colors.white),
            ),
          ),
        ),
        body: Container(
          // color: Colors.amber,
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center, // 세로 축 중앙정렬
              children: [
                Container(
                  width: 150,
                  height: 150,
                  decoration: BoxDecoration(
                    // BoxDecoration을 통해 이미지 생성
                    color: Colors.black,
                    image: DecorationImage(
                        image: AssetImage('images/messi.jpeg'),
                        fit: BoxFit.cover), // 영역에 맞게 사진을 채움
                  ),
                ),
                SizedBox(
                  // 사진과 텍스트박스의 여백
                  height: 40,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: 300,
                  color: Colors.grey.shade300,
                  child: Column(
                    // 세 줄의 텍스트가 들어가야 하므로 Column 생성
                    crossAxisAlignment: CrossAxisAlignment.start, // 텍스트 왼쪽 정렬
                    children: const [
                      Text('이름 : Messi'),
                      Text('나이 : 35'),
                      Text('성별 : 남자')
                    ],
                  ),
                ),
                SizedBox(
                  height: 24,
                ),
                Container(
                  padding: EdgeInsets.all(20),
                  width: 300,
                  color: Colors.grey.shade300,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: const [
                      Text('이력'),
                      Text('1. 아르헨티나 축구 국가대표팀'),
                      Text('2. FC 바르셀로나'),
                      Text('3. 파리생제르맹 FC')
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
