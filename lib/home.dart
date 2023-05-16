import 'package:flutter/material.dart';
import 'package:flutter_lesson7/constants/my_styles.dart';
import 'package:flutter_lesson7/newScaffold.dart';
import 'constants/my_colors.dart';
import 'models/useAnsAnsQues.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  bool test = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: MyColors.scaffoldBackgroundColor,
      appBar: AppBar(
        backgroundColor: Colors.black,
        title: const Center(
          child: Text(
            'ВИКТОРИНАГА КОШ КЕЛИҢИЗ!',
            style: TextStyle(
              fontSize: 23,
            ),
          ),
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              "This test will have ${UseAnsAndAnswer().getLength() + 1} questions. We wish you good luck",
              style: const TextStyle(color: Colors.blue, fontSize: 20),
            ),
            const SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => const NewBody()));
              },
              child: const Text(
                "START",
                style: TextStyle(
                  fontSize: 25,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
