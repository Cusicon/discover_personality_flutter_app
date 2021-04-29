import 'package:flutter/material.dart';

import 'question.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  final Function answerQuestion;
  final int questionIndex;
  final questions;

  // Constructor
  Quiz({
    @required this.answerQuestion,
    @required this.questionIndex,
    @required this.questions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Question(questions[questionIndex]["questionText"]),
        ...(questions[questionIndex]["answers"] as List<Map<String, Object>>)
            .map((answer) => Answer(
                  () => answerQuestion(answer["score"]),
                  answer["text"],
                ))
            .toList()
      ],
    );
  }
}
