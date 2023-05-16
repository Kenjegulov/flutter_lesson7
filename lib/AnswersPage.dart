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
            style: TextStyle(color: Color(0xffC72127), fontSize: 25),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            for (int i = 0; i < list.length; i++)
              if (list[i] == UseAnsAndAnswer().getAnswer(i))
                Row(
                  children: [
                    Container(
                      width: 500,
                      height: 40,
                      color: Colors.green,
                      child: Text(
                        "${i + 1}) ${UseAnsAndAnswer().getQuestion(i)}",
                        style: const TextStyle(fontSize: 28),
                      ),
                    ),
                    const SizedBox(
                      width: 10,
                    ),
                  ],
                )
              else
                Row(
                  children: [
                    Container(
                      width: 500,
                      height: 40,
                      color: Colors.red,
                      child: Text(
                        "${i + 1}) ${UseAnsAndAnswer().getQuestion(i)}",
                        style: const TextStyle(fontSize: 28),
                      ),
                    ),
                  ],
                ),
          ],
        ),
      ),
    );
  }
}
