// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class Answer extends StatelessWidget {
  //const Answer({Key? key}) : super(key: key);
  final String answerText;
  Answer(this.answerText);

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        borderRadius: BorderRadius.all(
          Radius.circular(20),
        ),
      ),
      margin: const EdgeInsets.only(
        left: 10,
        right: 10,
      ),
      width: double.infinity,
      child: RaisedButton(
        color: Colors.green,
        onPressed: () {
          print("clicked");
        },
        child: Text(
          answerText,
          style: TextStyle(
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
