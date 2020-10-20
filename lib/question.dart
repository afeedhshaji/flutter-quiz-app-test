import 'dart:async';

import 'package:flutter/material.dart';

class Question extends StatefulWidget {
  final String questionText;
  final Function timeHandler;
  static int time;

  Question(this.questionText, this.timeHandler);

  @override
  _QuestionState createState() => _QuestionState(timeHandler);
}

class _QuestionState extends State<Question> {
  
  Timer timer;
  Function timeHandler;
  
  _QuestionState(this.timeHandler);

  @override
  void initState() {
    super.initState();
    Question.time = 5;
    startTimer();
  }

  void startTimer() {
    timer = Timer.periodic(Duration(milliseconds: 1000), (Timer t) {
      setState(() {
        Question.time--;
      });
      if(Question.time == 0) {
        timeHandler(10);
        // t.cancel();
        if(widget.questionText == "Favourite Film?") 
          t.cancel();
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.all(30),
          child: CircleAvatar(
            radius: 30,
            child: Text(Question.time.toString(), style: TextStyle(color: Colors.white),),
            backgroundColor: Question.time <= 2 ? Question.time == 0? Colors.red[600] : Colors.red[400] : Colors.green[400],
            ),
        ),
        Container(
          width: double.infinity,
          margin: EdgeInsets.all(10),
          child: Text(
            widget.questionText,
            style: TextStyle(fontSize: 28),
            textAlign: TextAlign.center,
          ),
      )
      ],
    );
  }
}
