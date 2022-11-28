import 'package:flutter/material.dart';

import './question.dart';

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
  // private property of the class set up initialy by the application
  var _questionIndex = 0;
  // _MyAppState Method which operates question index in the application
  void _answerQuestion() {
    setState(() {
      _questionIndex += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      'What\'s your favorite color?',
      'What\'s your favorite animal?'
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text('My First Application'),
        ),
        body: Column(
          children: <Widget>[
            Question(questions[_questionIndex]),
            ElevatedButton(
                onPressed: _answerQuestion, child: const Text('Answer 1!')),
            ElevatedButton(
                onPressed: () => print('Anoynmous function for Answer 2!!'),
                child: const Text('Answer 2')),
            ElevatedButton(
                onPressed: () {
                  print('Hello from curly braces anonymous function!');
                },
                child: const Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
