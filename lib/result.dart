import 'package:flutter/material.dart';

class Result extends StatelessWidget {
  //const Result({Key? key}) : super(key: key);

  final Function selectHandler;
  Result(this.selectHandler);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          const SizedBox(height: 30),
          const Text(
            "Very Successful",
            style: TextStyle(
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
