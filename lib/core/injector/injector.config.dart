import 'package:get_it/get_it.dart' as _i1;
import 'package:injectable/injectable.dart' as _i2;

import '../../data/data.dart' as _i6;
import '../../data/repo/i_qa_repo.dart' as _i5;
import '../../data/source/json_reader.dart' as _i3;
import '../../domain/domain.dart' as _i4;
import '../../domain/usecase/qa_usecase.dart' as _i7;
import '../../presentation/bloc/question_answer/q_a_bloc.dart' as _i8;

_i1.GetIt $initGetIt(
  _i1.GetIt getIt, {
  String? environment,
  _i2.EnvironmentFilter? environmentFilter,
}) {
  final gh = _i2.GetItHelper(
    getIt,
    environment,
    environmentFilter,
  );
  gh.factory<_i3.JsonReader>(() => _i3.JsonReader());
  gh.factory<_i4.QARepo>(() => _i5.IQARepo(gh<_i6.JsonReader>()));
  gh.factory<_i7.QAUsecase>(() => _i7.QAUsecase(gh<_i4.QARepo>()));
  gh.factory<_i8.QABloc>(() => _i8.QABloc(gh<_i4.QAUsecase>()));
  return getIt;
}
