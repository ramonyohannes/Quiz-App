import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  //const HomePage({Key? key}) : super(key: key);

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
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.amber,
            ),
          ),
          Expanded(
            child: Container(
              color: Colors.red,
            ),
          ),
          Expanded(
            flex: 2,
            child: Container(
              color: Colors.green,
            ),
          ),
        ],
      ),
    );
  }
}
