import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/answer.dart';
import './question.dart';
import './quiz.dart';
import 'result.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  var _questionIndex = 0;
  final _questions = const [
    {
      'questionText': 'Favourite color?',
      'answerText': [
        {'text': 'Red', 'score': 10},
        {'text': 'Green', 'score': 20},
        {'text': 'Blue', 'score': 30},
      ],
    },
    {
      'questionText': 'Favourite Animal?',
      'answerText': [
        {'text': 'Lion', 'score': 10},
        {'text': 'Cat', 'score': 20},
        {'text': 'Dog', 'score': 30},
      ],
    },
    {
      'questionText': 'Favourite Film?',
      'answerText': [
        {'text': 'Batman', 'score': 10},
        {'text': 'Spiderman', 'score': 20},
        {'text': 'Watchmen', 'score': 30},
      ],
    },
  ];
  var _totalScore = 0;

  void _answerQuestion(int score) {
    _totalScore += score;

    setState(() {
      _questionIndex = _questionIndex + 1;
    });
    print(_questionIndex);

    // if (_questionIndex < questions.length) {
    //   print("We have more questions");
    // }
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('My First App'),
        ),
        body: _questionIndex < _questions.length
            ? Quiz(
                answerQuestion: _answerQuestion,
                questions: _questions,
                questionIndex: _questionIndex,
              )
            : Result(_totalScore),
      ),
    );
  }
}
