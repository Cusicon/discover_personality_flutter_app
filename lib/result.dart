import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function restartQuiz;

  // Constructor
  Result(this.resultScore, this.restartQuiz);

  // To calculate what would be showing in the Text Widget
  String get resultPhrase {
    String resultText;

    if (resultScore <= 20) {
      resultText = "You're awesome and innocent";
      print(resultScore);
    } else if (resultScore <= 30) {
      resultText = "You're pretty likable";
      print(resultScore);
    } else if (resultScore <= 50) {
      resultText = "You're ... kinda strange?!";
      print(resultScore);
    } else {
      resultText = "You're so bad!";
      print(resultScore);
    }

    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Padding(
          padding: const EdgeInsets.fromLTRB(20.0, 50.0, 20.0, 50.0),
          child: Center(
            child: Column(
              children: [
                Container(
                  margin: const EdgeInsets.fromLTRB(05.0, 10.0, 05.0, 20.0),
                  child: Text(
                    resultPhrase,
                    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
                  ),
                ),
                OutlinedButton(
                  onPressed: restartQuiz,
                  child: Text("Restart Quiz"),
                ),
              ],
            ),
          )),
    );
  }
}
