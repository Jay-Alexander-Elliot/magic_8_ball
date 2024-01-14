import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.deepOrangeAccent, // Body background color
        appBar: AppBar(
          title: Center(
            child: Text('Magic 8 Ball', style: TextStyle(color: Colors.white)),
          ),
          backgroundColor: Colors.black, // Top bar color
        ),
        body: BallPage(),
        bottomNavigationBar: BottomAppBar(
          color: Colors.black, // Bottom bar color
          child: Container(height: 50.0), // Adjust the height as needed
        ),
      ),
    ),
  );
}

class BallPage extends StatefulWidget {
  const BallPage({super.key});

  @override
  State<BallPage> createState() => _BallPageState();
}

class _BallPageState extends State<BallPage> {
  int ballNumber = 1;

  void changeBallImage() {
    setState(() {
      ballNumber = Random().nextInt(5) + 1; // Random ball image from 1 to 5
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () {
          changeBallImage();
        },
        child: Image.asset('images/ball$ballNumber.png'),
      ),
    );
  }
}
