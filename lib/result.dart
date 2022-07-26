import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key? key}) : super(key: key);

  final Function selectHandler;
  final int totalScore;
  Result(this.selectHandler, this.totalScore);

  String get resultPhase {
    var resultText = "You did it";
    if (totalScore >= 30) {
      resultText = "Great Job";
    } else if (totalScore < 30 && totalScore >= 20) {
      resultText = "Very nice";
    } else if (totalScore < 20 && totalScore >= 10) {
      resultText = "Not Bad";
    } else {
      resultText = "Its not good";
    }
    return resultText;
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30),
          Text(
            resultPhase,
            style: const TextStyle(
              fontSize: 35,
              fontWeight: FontWeight.bold,
              color: Colors.green,
            ),
          ),
          const SizedBox(height: 30),
          RaisedButton(
            onPressed: () {
              selectHandler();
            },
            child: const Text(
              "Restart Quiz",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
