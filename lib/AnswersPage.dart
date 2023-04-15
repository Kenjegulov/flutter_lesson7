import 'package:flutter/material.dart';
import 'models/useAnsAnsQues.dart';

class AnswersPage extends StatelessWidget {
  const AnswersPage({super.key, required this.list});
  final List<bool> list;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.amberAccent,
      appBar: AppBar(
        backgroundColor: const Color(0xff056c5c),
        elevation: 15,
        title: const Center(
          child: Text(
            "Your answers",
            style: TextStyle(color: Color(0xffC72127), fontSize: 40),
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 0; i < list.length; i++)
            if (list[i] == UseAnsAndAnswer().getAnswer(i))
              Text(
                "${i + 1}) ${UseAnsAndAnswer().getQuestion(i)}",
                style: const TextStyle(
                  color: Colors.green,
                  fontSize: 48,
                ),
              )
            else
              Text(
                "${i + 1}) ${UseAnsAndAnswer().getQuestion(i)}",
                style: const TextStyle(
                  color: Colors.red,
                  fontSize: 48,
                ),
              ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}
