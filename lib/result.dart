import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int resultScore;
  final Function quizResetter;

  Result(this.resultScore, this.quizResetter);

  String get resultPhrase {
    String resultText;
    if (resultScore <= 8) {
      resultText = "You are so Awesome and innocent!";
    } else if (resultScore <= 12) {
      resultText = "You are pretty likeable... :)";
    } else if (resultScore <= 18) {
      resultText = "You are ... strange?!";
    } else {
      resultText = "You are fierce!!!";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: <Widget>[
          Text(
            resultPhrase,
            style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          FlatButton(
            child: Text(
              "Restart Quiz!",
              style: TextStyle(color: Colors.blue),
            ),
            onPressed: quizResetter,
          )
        ],
      ),
    );
  }
}
