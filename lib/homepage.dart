// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './result.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //const HomePage({Key? key}) : super(key: key);
  final _questionList = [
    {
      "questionText": "What is your favorite Food",
      "answer": ["Doro", "Tbs", "Kitfo", "Kkl"],
    },
    {
      "questionText": "What is your favorite Color",
      "answer": ["Black", "Red", "Green", "Grey"],
    },
    {
      "questionText": "What is your favorite Drink",
      "answer": ["Soda", "Beer", "Draft", "Redbull"],
    },
    {
      "questionText": "What is your favorite Pet",
      "answer": ["Dog", "Cat", "Parrot", "Rabbit"],
    },
  ];

  int _questionIndex = 0;

  void _changeQuestion() {
    setState(() {
      _questionIndex = _questionIndex + 1;
    });
  }

  void restartQuiz() {
    setState(() {
      _questionIndex = 0;
    });
  }

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
      body: _questionIndex >= _questionList.length
          ? Result(restartQuiz)
          : Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                QuestionText(
                  _questionList[_questionIndex]["questionText"].toString(),
                ),
                ...(_questionList[_questionIndex]["answer"] as List<String>)
                    .map((answer) {
                  return Answer(answer, _changeQuestion);
                }).toList()
              ],
            ),
    );
  }
}
