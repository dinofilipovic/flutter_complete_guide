import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({super.key});
  final int resultScore;

  Result(this.resultScore);

  String get resultPhase {
    String resultText;

    if (resultScore <= 8) {
      resultText = 'You are awsome and positive!';
    } else if (resultScore <= 12) {
      resultText = 'You are likable!';
    } else if (resultScore <= 16) {
      resultText = 'You are strange!';
    } else {
      resultText = 'You are so bad!';
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhase,
        style: TextStyle(
          fontSize: 36,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}
