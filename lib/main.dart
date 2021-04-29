import 'package:flutter/material.dart';

import 'quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  var _totalScore = 0;

  final _questions = const [
    {
      "questionText": "What's your favourite color?",
      "answers": [
        {"text": "Red", "score": 8},
        {"text": "Green", "score": 5},
        {"text": "Blue", "score": 2},
      ]
    },
    {
      "questionText": "What's your favourite food?",
      "answers": [
        {"text": "Rice", "score": 2},
        {"text": "Beans", "score": 4},
      ]
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {"text": "Dog", "score": 9},
        {"text": "Cat", "score": 6},
        {"text": "Fish", "score": 3},
      ]
    },
    {
      "questionText": "Who is your favourite relation?",
      "answers": [
        {"text": "Uncle", "score": 8},
        {"text": "Dad", "score": 3},
        {"text": "Brother", "score": 5},
        {"text": "Mom", "score": 1}
      ]
    },
  ];

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void _restartQuiz() {
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
          title: Text("Discover Personality"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
                questions: _questions,
              )
            : Result(_totalScore, _restartQuiz),
      ),
    );
  }
}
