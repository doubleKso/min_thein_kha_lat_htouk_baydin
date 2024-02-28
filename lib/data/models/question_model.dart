import 'package:lat_htauk_bay_din/domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'question_model.g.dart';

typedef QuestionList = List<QuestionModel>;

@JsonSerializable()
class QuestionModel implements Question {
  @override
  @JsonKey(defaultValue: "")
  final String? questionName;

  @override
  @JsonKey(defaultValue: 0)
  final int? questionNo;

  QuestionModel({this.questionName, this.questionNo});

  factory QuestionModel.fromJson(Map<String, dynamic> json) =>
      _$QuestionModelFromJson(json);

  Map<String, dynamic> toJson() => _$QuestionModelToJson(this);
}
