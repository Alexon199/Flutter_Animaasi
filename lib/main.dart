import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: AnimasiContoh(),
      debugShowCheckedModeBanner: false,
    );
  }
}

class AnimasiContoh extends StatefulWidget {
  @override
  _AnimasiContohState createState() => _AnimasiContohState();
}

class _AnimasiContohState extends State<AnimasiContoh> {
  bool _ubah = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Fluter Animasi')),
      body: Center(
        child: AnimatedContainer(
          width: _ubah ? 200 : 100,
          height: _ubah ? 200 : 100,
          decoration: BoxDecoration(
            color: _ubah ? Colors.blue : Colors.orange,
            borderRadius: BorderRadius.circular(_ubah ? 0 : 30),
          ),
          duration: Duration(seconds: 1),
          curve: Curves.easeInOut,
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            _ubah = !_ubah;
          });
        },
        child: Icon(Icons.play_arrow),
      ),
    );
  }
}
