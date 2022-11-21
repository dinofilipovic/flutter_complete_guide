import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return MyAppState();
    throw UnimplementedError();
  }
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;
  void answerQuestion() {
    setState(() {
      questionIndex += 1;
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
          title: Text('My First Application'),
        ),
        body: Column(
          children: <Widget>[
            Text(questions[questionIndex]),
            ElevatedButton(onPressed: answerQuestion, child: Text('Answer 1!')),
            ElevatedButton(
                onPressed: () => print('Anoynmous function for Answer 2!!'),
                child: Text('Answer 2')),
            ElevatedButton(
                onPressed: () {
                  print('Hello from curly braces anonymous function!');
                },
                child: Text('Answer 3')),
          ],
        ),
      ),
    );
  }
}
