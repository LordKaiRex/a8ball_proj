import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.lightBlue,
        appBar: AppBar(
          title: Center(
            child: const Text('ASK ME ANYTHING'),
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: const aBall(),
      ),
    ),
  );
}

class aBall extends StatefulWidget {
  const aBall({super.key});

  @override
  State<aBall> createState() => _aBallState();
}

class _aBallState extends State<aBall> {
  int ballNo = 1;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            child: TextButton(
              onPressed: () {
                setState(() {
                  ballNo = Random().nextInt(5) + 1;
                });
              },
              child: Image.asset(
                "images/ball$ballNo.png",
                width: 350,
                height: 350,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
