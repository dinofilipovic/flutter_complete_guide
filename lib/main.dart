import 'package:flutter/material.dart';

import './quiz.dart';
import './result.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
    //throw UnimplementedError();
  }
}

// Private state class which operates
class _MyAppState extends State<MyApp> {
  //Had to change it so I can set up conditionals in the code because const
//is being used and it can be set up during compile phase
  final _questions = const [
    {
      'questionText': 'What\'s your favorite color?',
      'answers': [
        {'text': 'Black', 'score': 10},
        {'text': 'Red', 'score': 5},
        {'text': 'Green', 'score': 3},
        {'text': 'White', 'score': 1},
      ]
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': [
        {'text': 'Rabbit', 'score': 10},
        {'text': 'Snake', 'score': 5},
        {'text': 'Elephant', 'score': 3},
        {'text': 'Lion', 'score': 1},
      ]
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': [
        {'text': 'Dino', 'score': 10},
        {'text': 'Peter', 'score': 5},
        {'text': 'Dinko', 'score': 4},
        {'text': 'Pinko', 'score': 2},
      ]
    },
  ];
  // private property of the class set up initialy by the application
  var _questionIndex = 0;
  var _totalScore = 0;
  // _MyAppState Method which operates question index in the application
  void _answerQuestion(int score) {
    // Added after modification of the questions, answers structure, added map into answer
    _totalScore += score;

    if (_questionIndex < _questions.length) {}
    setState(() {
      _questionIndex += 1;
    });
  }

  void _resetQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Application'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            //added parameter _resetQuiz for reset quiz functionality
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
