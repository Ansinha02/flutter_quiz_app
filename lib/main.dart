import 'package:flutter/material.dart';

import './result.dart';
import './quiz.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
 
  final _questions = const [
    {
      "questionText": "What is your favourite color?",
      "answers": [
        {"text": "Red", "score": 10},
        {"text": "Blue", "score": 6},
        {"text": "Green", "score": 4},
        {"text": "Yellow", "score": 1}
      ]
    },
    {
      "questionText": "What's your favourite animal?",
      "answers": [
        {"text": "Lion", "score": 10},
        {"text": "Rhinoceros ", "score": 7},
        {"text": "Elephant", "score": 4},
        {"text": "Panda", "score": 1}
      ]
    },
    {
      "questionText": "What is your favourite Chocolate?",
      "answers": [
        {"text": "Bournville", "score": 10},
        {"text": "Temptation", "score": 6},
        {"text": "Dairy Milk Silk", "score": 3},
        {"text": "Milky Bar", "score": 1}
      ]
    },
  ];

  var _questionIndex = 0;
  var _totalScore = 0;

  void _resetQuiz(){

    setState(() {
      _questionIndex = 0;
    _totalScore = 0;
    });
  }

  void _answerQuestion(int score) {

    setState(() {
      _totalScore += score;
      _questionIndex = _questionIndex + 1;
    });
    if (_questionIndex < _questions.length) {
      print("We have more questions!");
    }
    print(_questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ultimate Quizzer!"),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                questions: _questions,
                answerQuestion: _answerQuestion,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore, _resetQuiz),
      ),
    );
  }
}
