import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';

class Answer extends StatelessWidget {
  final Function selectHandler;

  Answer(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      child: RaisedButton(
        color: Colors.blue,
        textColor: Colors.white,
        child: Text('Answer1'),
        onPressed: selectHandler,
      ),
    );
  }
}
