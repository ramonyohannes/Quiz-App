import 'package:flutter/material.dart';
import 'answer.dart';

class Quiz extends StatelessWidget {
  //const Quiz({Key? key}) : super(key: key);
  final int questionIndex;
  final List<Map<String, Object>> questionList;
  final Function changeQuestion;
  Quiz(
    this.questionIndex,
    this.questionList,
    this.changeQuestion,
  );

  @override
  Widget build(BuildContext context) {
    //display list of answers
    return Column(
      children: [
        ...(questionList[questionIndex]["answer"] as List<Map<String, Object>>)
            .map((answer) {
          return Answer(
            answer["answerText"].toString(),
            () => changeQuestion(answer["Score"]),
          );
        }).toList()
      ],
    );
  }
}
