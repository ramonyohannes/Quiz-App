import 'package:flutter/material.dart';

class Question extends StatelessWidget {
  //const Questions({Key? key}) : super(key: key);
  final String text;
  Question(this.text);

  @override
  Widget build(BuildContext context) {
    //displays Question title
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
