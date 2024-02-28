part of 'search_bloc.dart';

enum SearchStatus {
  data,
  loading,
  error,
  noData,
}

class SearchState {
  final SearchStatus status;
  final QuestionList? questionList;

  SearchState({required this.status, this.questionList});

  SearchState copyWith(
          {required SearchStatus status, QuestionList? questionList}) =>
      SearchState(
          status: status, questionList: questionList ?? this.questionList);
}
