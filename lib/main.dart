import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {

  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<MyApp> {
  var questionIndex = 0;

  void answerQuestion(){

    setState(() {
       questionIndex = questionIndex + 1;
    });
   
    print(questionIndex);
  }

  @override
  Widget build(BuildContext context) {
    var questions = [
      "What is your favourite color?",
      "What's your favourite animal?",
      "What is your favourite Chocolate?"
    ];
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Ultimate Quizzer!"),
        ),
        body: Column(
          children: [
            Text(questions.elementAt(questionIndex)),
            RaisedButton(
              child: Text("Ans 1."),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Ans 2."),
              onPressed: answerQuestion,
            ),
            RaisedButton(
              child: Text("Ans 3."),
              onPressed: answerQuestion,
            ),
          ],
        ),
      ),
    );
  }
}
