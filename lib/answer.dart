import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  final Function answerHandler;
  final String answerText;

  // Constructor
  Answer(this.answerHandler, this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: const EdgeInsets.fromLTRB(20.0, 5.0, 20.0, 5.0),
      child: ElevatedButton(
        onPressed: answerHandler,
        child: Text(answerText),
      ),
    );
  }
}
