import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //final Function selectHandler;
  final VoidCallback selectHandler;

  //const Answer({super.key});
  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(Colors.blue),
        ),
        child: Text('Anser 1'),
        onPressed: selectHandler,
      ),
    );
  }
}
