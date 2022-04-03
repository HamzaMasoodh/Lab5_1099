import 'package:audioplayers/audioplayers.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        body: XylophoneApplication(),
      ),
    ),
  );
}

class XylophoneApplication extends StatefulWidget {
  const XylophoneApplication({Key? key}) : super(key: key);

  @override
  State<XylophoneApplication> createState() => _XylophoneApplicationState();
}

class _XylophoneApplicationState extends State<XylophoneApplication> {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Row(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        AudioKey(1, Colors.yellow),
        AudioKey(2, Colors.black),
        AudioKey(3, Colors.purple),
        AudioKey(4, Colors.blue),
        AudioKey(5, Colors.orange),
        AudioKey(6, Colors.red),
        AudioKey(7, Colors.green),
      ],
    ));
  }

  AudioKey(int i, Color c) {
    return Expanded(
      child: Container(
        color: c,
        child: TextButton(
          onPressed: () {
            setState(() {
              final player = AudioPlayer();
              player.play('assets/note$i.wav');
            });
          },
          child: Text(""),
        ),
      ),
    );
  }
}
