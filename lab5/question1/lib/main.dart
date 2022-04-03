import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(BallPage());
}

class BallPage extends StatelessWidget {
  BallPage({Key? key}) : super(key: key);
  int imageNum = 1;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            appBar: AppBar(
              title: Text("Ask Me Everything"),
              backgroundColor: Color.fromARGB(255, 5, 35, 234),
            ),
            body: SafeArea(
              child: Container(
                height: double.infinity,
                width: double.infinity,
                color: Colors.blue,
                child: ElevatedButton(
                    onPressed: () {
                      imageNum = Random().nextInt(5) + 1;
                      print('I got Clicked');
                      print(imageNum);
                    },
                    child: Image.asset('images/ball$imageNum.png')),
              ),
            )));
  }
}
