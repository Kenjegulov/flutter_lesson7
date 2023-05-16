import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_lesson7/AnswersPage.dart';
import 'package:flutter_lesson7/constants/my_styles.dart';
import 'package:flutter_lesson7/constants/my_texts.dart';
import 'constants/my_colors.dart';
import 'models/useAnsAnsQues.dart';

List<bool> yourAnswers = [];

class NewBody extends StatefulWidget {
  const NewBody({super.key});

  @override
  State<NewBody> createState() => _NewBodyState();
}

class _NewBodyState extends State<NewBody> {
  bool test = false;
  int index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/fon.jpg'),
            fit: BoxFit.cover,
          ),
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              if (index != -1)
                Text(
                  UseAnsAndAnswer().getQuestion(index),
                  style: MyTextStyles.appTextStyle,
                  textAlign: TextAlign.center,
                ),
              const SizedBox(
                height: 102,
              ),
              if (index != -1)
                SizedBox(
                  width: 335,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.trueBackgroundColor),
                    onPressed: () {
                      setState(() {
                        yourAnswers.add(true);
                        index = UseAnsAndAnswer().next(index);
                      });
                    },
                    child: const Text(
                      MyTexts.trueText,
                      style: MyTextStyles.trueTextStyle,
                    ),
                  ),
                ),
              const SizedBox(
                height: 30,
              ),
              if (index != -1)
                SizedBox(
                  width: 335,
                  height: 70,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: MyColors.falseBackgroundColor),
                    onPressed: () {
                      setState(() {
                        yourAnswers.add(false);
                        index = UseAnsAndAnswer().next(index);
                      });
                    },
                    child: const Text(
                      MyTexts.falseText,
                      style: MyTextStyles.trueTextStyle,
                    ),
                  ),
                ),
              const SizedBox(
                height: 30,
              ),
              if (index == -1)
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                      side: const BorderSide(width: 2, color: Colors.black),
                      elevation: 10,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 50, vertical: 25)),
                  onPressed: () {
                    Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) =>
                                AnswersPage(list: yourAnswers)));
                  },
                  child: const Text(
                    "finish",
                  ),
                ),
            ],
          ),
        ),
      ),
    );
  }
}
