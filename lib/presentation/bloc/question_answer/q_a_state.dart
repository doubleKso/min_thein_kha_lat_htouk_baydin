part of 'q_a_bloc.dart';

enum QAStatus {
  initial,
  loading,
  data,
  error,
}

class QAState {
  final QAStatus status;

  final QAModel? qaModel;

  final String? message;

  QAState({required this.status, this.qaModel, this.message});

  QAState copyWith(
          {required QAStatus status, QAModel? qaModel, String? message}) =>
      QAState(
        status: status,
        qaModel: qaModel ?? this.qaModel,
        message: message ?? this.message,
      );
}
