import 'ansAndQues.dart';

class UseAnsAndAnswer {
  List<AnswerAndQuestion> list = [
    AnswerAndQuestion(
        question:
            'Flutter менен мобилдик тиркемелерди иштеп чыгуу үчүн DART тили колдонулат...',
        answer: true),
    AnswerAndQuestion(
        question: 'Флаттерди эч бир ОС колдобойт?...', answer: false),
    AnswerAndQuestion(
        question:
            'Flutter менен колдонмолорду иштеп чыгуу үчүн IDE колдонуш керекби?...',
        answer: true),
    AnswerAndQuestion(
        question: 'Флуттерде эч кандай виджеттер колдонулабайт...',
        answer: false),
    AnswerAndQuestion(
        question: 'DART программалоо тили дүйнөдө жалгыз программалоо тили...',
        answer: false),
    AnswerAndQuestion(
        question: 'void эч нерсе кайтарбаган фунция...', answer: true),
    AnswerAndQuestion(
        question: 'String жалаң гана сан алуучу класс...', answer: false),
    AnswerAndQuestion(
        question: 'Navigator бир беттен экинчи бетко өтүүчү класс...',
        answer: true),
    AnswerAndQuestion(
        question: 'Flutter вепсайттарды жасоочу платформа...', answer: false),
    AnswerAndQuestion(
        question: 'AssetImage Сүрөт коюууда колдонулат...', answer: true),
    AnswerAndQuestion(
        question: 'SDK инструменттердин топтому...', answer: true),
    AnswerAndQuestion(
        question: '"debugShowCheckedModeBanner: true," демобаннерди өчүрөт...',
        answer: false),
    AnswerAndQuestion(
        question: 'Баскыч кылуу үчүн Button колдонобуз...', answer: true),
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
