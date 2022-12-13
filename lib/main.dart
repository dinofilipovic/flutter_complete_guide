import 'package:flutter/material.dart';

import './quiz.dart';

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
      'answers': ['Black', 'Red', 'Green', 'White']
    },
    {
      'questionText': 'What\'s your favorite animal?',
      'answers': ['Rabbit', 'Snake', 'Elephant', 'Lion']
    },
    {
      'questionText': 'Who\'s your favorite instructor?',
      'answers': ['Max', 'Max', 'Max', 'Max']
    },
  ];
  // private property of the class set up initialy by the application
  var _questionIndex = 0;
  // _MyAppState Method which operates question index in the application
  void _answerQuestion() {
    if (_questionIndex < _questions.length) {}
    setState(() {
      _questionIndex += 1;
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
            : Center(
                child: Text('You did it!'),
              ),
      ),
    );
  }
}
