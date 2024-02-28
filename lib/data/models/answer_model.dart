import 'package:lat_htauk_bay_din/domain/domain.dart';
import 'package:json_annotation/json_annotation.dart';

part 'answer_model.g.dart';

typedef AnswerList = List<AnswerModel>;

@JsonSerializable()
class AnswerModel implements Answer {
  @override
  @JsonKey(defaultValue: "")
  final String? answerResult;

  @override
  @JsonKey(defaultValue: 0)
  final int? questionNo;

  @override
  @JsonKey(defaultValue: 0)
  final int? answerNo;

  AnswerModel({this.answerNo, this.answerResult, this.questionNo});

  factory AnswerModel.fromJson(Map<String, dynamic> json) =>
      _$AnswerModelFromJson(json);

  Map<String, dynamic> toJson() => _$AnswerModelToJson(this);
}
