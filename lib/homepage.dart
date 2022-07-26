import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //const HomePage({Key? key}) : super(key: key);
  var _questionList = [
    {
      "questionText": "What is your favorite food",
      "answer": ["Doro", "Tbs", "Kitfo", "KKL"],
    },
    {
      "questionText": "What is your favorite color",
      "answer": ["black", "red", "green", "grey"],
    },
    {
      "questionText": "What is your favorite drink",
      "answer": ["soda", "beer", "draft", "redbull"],
    },
    {
      "questionText": "What is your favorite pet",
      "answer": ["dog", "cat", "parrot", "rabbit"],
    },
  ];

  // [
  //   "What is your favorite food",
  //   "What is your favorite Drink",
  //   "What is yout favortie Color",
  // ];

  int _questionIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          "Quiz App",
          style: TextStyle(
            color: Colors.black,
            fontSize: 30,
            fontWeight: FontWeight.bold,
          ),
        ),
        elevation: 0,
        centerTitle: true,
        backgroundColor: Colors.white10,
      ),
      body: Column(
        children: [
          const SizedBox(
            height: 20,
          ),
          QuestionText(
            _questionList[_questionIndex]["questionText"].toString(),
          ),

          ...(_questionList[_questionIndex]["answer"] as List<String>)
              .map((answer) {
            return Answer(answer);
          }).toList()
          // Answer(),
          // Answer(),
          // Answer(),
        ],
      ),
    );
  }
}
