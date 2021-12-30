import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  @override
  var questionIndex = 0;

  var question = [
    {
      'queAns': 'What is your favourite color?',
      'answer': ['Black', 'Red', 'Green', 'White'],
    },
    {
      'queAns': 'What is your favourite animal?',
      'answer': ['Rabbit', 'Dog', 'Tiger', 'Elephant'],
    },
    {
      'queAns': 'What is your favourite sport?',
      'answer': ['Cricket', 'Football', 'Basketball', 'Badminton'],
    },
  ];

  void btnClick() {
    setState(() {
      questionIndex = questionIndex + 1;
    });
    print('Button Clicked');
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Quiz App"),
        ),
        body: questionIndex < question.length
            ? Column(
                children: [
                  Question(question[questionIndex]['queAns'] as String),
                  ...(question[questionIndex]['answer'] as List<String>)
                      .map((e) {
                    return Answer(btnClick, e);
                  }).toList(),
                ],
              )
            : Center(
                child: Text('Done!'),
              ),
      ),
    );
  }
}
