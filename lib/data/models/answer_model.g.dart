// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'answer_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

AnswerModel _$AnswerModelFromJson(Map<String, dynamic> json) => AnswerModel(
      answerNo: json['answerNo'] as int? ?? 0,
      answerResult: json['answerResult'] as String? ?? '',
      questionNo: json['questionNo'] as int? ?? 0,
    );

Map<String, dynamic> _$AnswerModelToJson(AnswerModel instance) =>
    <String, dynamic>{
      'answerResult': instance.answerResult,
      'questionNo': instance.questionNo,
      'answerNo': instance.answerNo,
    };
