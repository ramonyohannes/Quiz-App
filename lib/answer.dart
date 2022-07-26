// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({Key? key}) : super(key: key);
  final String answerText;
  final Function selectHandler;
  Answer(
    this.answerText,
    this.selectHandler,
  );

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.green,
        onPressed: () {
          selectHandler();
        },
        child: Text(
          answerText,
          style: const TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
