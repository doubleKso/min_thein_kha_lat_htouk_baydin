import 'package:bloc/bloc.dart';
import 'package:lat_htauk_bay_din/data/data.dart';
import 'package:meta/meta.dart';

part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  SearchBloc() : super(SearchState(status: SearchStatus.data)) {
    on<SearchQuestion>((event, emit) {
      emit(state.copyWith(status: SearchStatus.loading));
      if (event.query.isEmpty) {
        emit(state.copyWith(
            status: SearchStatus.data, questionList: event.questionList));
      } else {
        var questionList = event.questionList
            .where((element) => element.questionName!
                .replaceAll(RegExp(r' '), "")
                .contains(event.query))
            .toList();
        emit(state.copyWith(
            status: SearchStatus.data, questionList: questionList));
      }
    });
  }
}
