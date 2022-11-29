import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  return runApp(MaterialApp(
    home: Scaffold(
      backgroundColor: Colors.red,
      appBar: AppBar(
        title: const Text('Dice'),
        backgroundColor: Colors.red,
      ),
      body: DicePage(),
    ),
  ));
}

class DicePage extends StatefulWidget {
  const DicePage({Key? key}) : super(key: key);

  @override
  State<DicePage> createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {

  var left = 1;
  var right = 1;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Center(
        child: Row(
          children: [
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState((){
                    left = Random().nextInt(6) + 1;
                    right = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset("images/dice$left.png"),
              ),
            ),
            Expanded(
              child: FlatButton(
                onPressed: () {
                  setState((){
                    right = Random().nextInt(6) + 1;
                    left = Random().nextInt(6) + 1;
                  });
                },
                child: Image.asset("images/dice$right.png"),
              ),
            )
          ],
        ),
      ),
    );
  }
}