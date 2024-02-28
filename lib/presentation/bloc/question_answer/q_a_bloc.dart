import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
import 'package:lat_htauk_bay_din/core/core.dart';
import 'package:lat_htauk_bay_din/data/data.dart';
import 'package:lat_htauk_bay_din/domain/domain.dart';

part 'q_a_event.dart';
part 'q_a_state.dart';

@Injectable()
class QABloc extends Bloc<QAEvent, QAState> {
  final QAUsecase qaUsecase;
  QABloc(this.qaUsecase) : super(QAState(status: QAStatus.initial)) {
    on<FetchQandA>(_fetchQandA);
  }

  FutureOr<void> _fetchQandA(FetchQandA event, Emitter<QAState> emit) async {
    emit(state.copyWith(status: QAStatus.loading));
    print("bloc work");
    final data = await qaUsecase.getQA();
    data.fold((l) {
      if (l is LogicFailure) {
        emit(state.copyWith(status: QAStatus.error, message: l.e));
      }
    }, (r) {
      emit(state.copyWith(status: QAStatus.data, qaModel: r));
    });
  }
}
