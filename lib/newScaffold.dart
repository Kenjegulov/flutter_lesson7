import 'package:flutter/material.dart';
import 'package:flutter_lesson7/constants/my_questions.dart';
import 'package:flutter_lesson7/constants/my_styles.dart';
import 'package:flutter_lesson7/constants/my_texts.dart';
import 'constants/my_colors.dart';
import 'dart:math';

List questons = <String>[
  "Кыргызстанда 7 область барбы?",
  "Талас Кыргызстандын борборубу?",
  "Кыргызстан туштук батышынан Озбекстан менен кездешетпи?"
];

List answers = <String>["true", "false", 'true'];

class NewBody extends StatefulWidget {
  const NewBody({super.key});

  @override
  State<NewBody> createState() => _NewBodyState();
}

class _NewBodyState extends State<NewBody> {
  bool test = false;
  int index = Random().nextInt(3);
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "${questons[index]}",
            style: MyTextStyles.appTextStyle,
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 102,
          ),
          SizedBox(
            width: 335,
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.trueBackgroundColor),
              onPressed: () {
                test = true;
                if (answers[index] == "true") {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        MyTexts.trueAnswer,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: MyColors.trueBackgroundColor, fontSize: 30),
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        MyTexts.falseAnswer,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: MyColors.falseBackgroundColor, fontSize: 30),
                      ),
                    ),
                  );
                }
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
          SizedBox(
            width: 335,
            height: 70,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                  backgroundColor: MyColors.falseBackgroundColor),
              onPressed: () {
                test = true;
                if (answers[index] == "false") {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        MyTexts.trueAnswer,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: MyColors.trueBackgroundColor, fontSize: 30),
                      ),
                    ),
                  );
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        MyTexts.falseAnswer,
                        textAlign: TextAlign.center,
                        style: TextStyle(
                            color: MyColors.falseBackgroundColor, fontSize: 30),
                      ),
                    ),
                  );
                }
              },
              child: const Text(
                MyTexts.falseText,
                style: MyTextStyles.trueTextStyle,
              ),
            ),
          ),
          const SizedBox(
            height: 45,
          ),
          SizedBox(
            width: 200,
            height: 40,
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(backgroundColor: Colors.blue),
              onPressed: () {
                if (test) {
                  NewBody();
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text(
                        "Сиз суроого жооп бербединиз!",
                        textAlign: TextAlign.center,
                        style: TextStyle(color: Colors.amber, fontSize: 30),
                      ),
                    ),
                  );
                }
              },
              child: const Text(
                "next",
                style: MyTextStyles.trueTextStyle,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
