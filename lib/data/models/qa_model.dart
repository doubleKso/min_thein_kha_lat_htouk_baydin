import 'package:lat_htauk_bay_din/data/data.dart';
import 'package:lat_htauk_bay_din/domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'qa_model.g.dart';

@JsonSerializable()
class QAModel implements QA {
  @override
  @JsonKey(name: "answers", defaultValue: [])
  final AnswerList? answerList;

  @override
  @JsonKey(name: "numberList", defaultValue: [])
  final List<String>? numberList;

  @override
  @JsonKey(name: "questions", defaultValue: [])
  final QuestionList? questionList;

  QAModel({this.answerList, this.numberList, this.questionList});

  factory QAModel.fromJson(Map<String, dynamic> json) =>
      _$QAModelFromJson(json);

  Map<String, dynamic> toJson() => _$QAModelToJson(this);
}
