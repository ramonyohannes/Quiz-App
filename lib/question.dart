import 'package:flutter/material.dart';

class QuestionText extends StatelessWidget {
  //const Questions({Key? key}) : super(key: key);
  final String text;
  QuestionText(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(10),
      child: Text(
        text,
        style: const TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25,
          color: Colors.black,
        ),
      ),
    );
  }
}
