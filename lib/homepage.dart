// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import './question.dart';
import './answer.dart';
import './result.dart';
import './quiz.dart';

class HomePage extends StatefulWidget {
  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //const HomePage({Key? key}) : super(key: key);
  final _questionList = [
    {
      "questionText": "What is your favorite Food",
      "answer": [
        {
          "answerText": "Doro",
          "Score": 10,
        },
        {
          "answerText": "Tbs",
          "Score": 5,
        },
        {
          "answerText": "Kitfo",
          "Score": 3,
        },
        {
          "answerText": "Kkl",
          "Score": 1,
        },
      ],
    },
    {
      "questionText": "What is your favorite Color",
      "answer": [
        {
          "answerText": "Black",
          "Score": 10,
        },
        {
          "answerText": "Red",
          "Score": 5,
        },
        {
          "answerText": "Green",
          "Score": 3,
        },
        {
          "answerText": "Grey",
          "Score": 1,
        },
      ],
    },
    {
      "questionText": "What is your favorite Drink",
      "answer": [
        {
          "answerText": "Soda",
          "Score": 10,
        },
        {
          "answerText": "Beer",
          "Score": 5,
        },
        {
          "answerText": "Draft",
          "Score": 3,
        },
        {
          "answerText": "Redbull",
          "Score": 1,
        },
      ],
    },
    {
      "questionText": "What is your favorite Pet",
      "answer": [
        {
          "answerText": "Dog",
          "Score": 10,
        },
        {
          "answerText": "Cat",
          "Score": 5,
        },
        {
          "answerText": "Parrot",
          "Score": 3,
        },
        {
          "answerText": "Rabbit",
          "Score": 1,
        },
      ],
    },
  ];

  int _questionIndex = 0;
  int _totalScore = 0;

  void _changeQuestion(int score) {
    setState(() {
      _questionIndex = _questionIndex + 1;
      _totalScore = _totalScore + score;
    });
  }

  void restartQuiz() {
    setState(() {
      _questionIndex = 0;
      _totalScore = 0;
    });
  }

  @override
  Widget build(BuildContext context) {
    print(_totalScore);
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
          ? Result(restartQuiz, _totalScore)
          : Column(
              children: [
                const SizedBox(
                  height: 20,
                ),
                QuestionText(
                  _questionList[_questionIndex]["questionText"].toString(),
                ),
                Quiz(
                  (_questionIndex),
                  _questionList,
                  _changeQuestion,
                )
              ],
            ),
    );
  }
}
