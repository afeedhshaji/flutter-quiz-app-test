import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  final int result;

  Result(this.result);

  String get resultPhrase {
    var resultText = "You did it";
    if (result <= 8) {
      result Text = "You are awesome and innocent";
    } else if (result <= 12) {
      resultText = "Pretty Liekable";
    } else {
      resultText = "You're bad";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        resultPhrase,
        style: TextStyle(fontSize: 36, fontWeight: FontWeight.bold),
        textAlign: TextAlign.center,
      ),
    );
  }
}
