import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //final Function selectHandler;
  final VoidCallback selectHandler;
  final String answerText;

  //const Answer({super.key});
  Answer(this.selectHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        child: Text(answerText),
        onPressed: selectHandler,
      ),
    );
  }
}
