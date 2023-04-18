import 'ansAndQues.dart';

// int i = 0;

class UseAnsAndAnswer {
  List<AnswerAndQuestion> list = [
    AnswerAndQuestion(question: "Кыргызстанда 7 область барбы?", answer: true),
    AnswerAndQuestion(
        question: "Талас Кыргызстандын борборубу?", answer: false),
    AnswerAndQuestion(
        question: "Кыргызстан туштук батышынан Озбекстан менен кездешетпи?",
        answer: true),
  ];
  int next(int index) {
    // i++;
    // if (i == 3) {
    //   i = 0;
    //   return -1;
    // }
    if (index == list.length - 1) return -1;
    return ++index;
  }

  String getQuestion(int index) {
    return list[index].question;
  }

  bool getAnswer(int index) {
    return list[index].answer;
  }

  int getLength() {
    return list.length - 1;
  }

  List<AnswerAndQuestion> getAll() {
    return list;
  }
}
