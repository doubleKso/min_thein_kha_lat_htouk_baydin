part of 'search_bloc.dart';

@immutable
sealed class SearchEvent {}

class SearchQuestion extends SearchEvent {
  final String query;
  final QuestionList questionList;

  SearchQuestion({required this.query, required this.questionList});
}
