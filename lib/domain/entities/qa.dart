import 'package:lat_htauk_bay_din/data/data.dart';

abstract class QA {
  final AnswerList? answerList;
  final QuestionList? questionList;
  final List<String>? numberList;

  QA({this.answerList, this.questionList, this.numberList});
}
