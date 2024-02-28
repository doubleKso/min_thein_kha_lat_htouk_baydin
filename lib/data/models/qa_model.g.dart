// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'qa_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

QAModel _$QAModelFromJson(Map<String, dynamic> json) => QAModel(
      answerList: (json['answers'] as List<dynamic>?)
              ?.map((e) => AnswerModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
      numberList: (json['numberList'] as List<dynamic>?)
              ?.map((e) => e as String)
              .toList() ??
          [],
      questionList: (json['questions'] as List<dynamic>?)
              ?.map((e) => QuestionModel.fromJson(e as Map<String, dynamic>))
              .toList() ??
          [],
    );

Map<String, dynamic> _$QAModelToJson(QAModel instance) => <String, dynamic>{
      'answers': instance.answerList,
      'numberList': instance.numberList,
      'questions': instance.questionList,
    };
