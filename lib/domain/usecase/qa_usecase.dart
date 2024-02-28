import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lat_htauk_bay_din/core/core.dart';
import 'package:lat_htauk_bay_din/data/data.dart';

import '../domain.dart';

@Injectable()
class QAUsecase {
  final QARepo qaRepo;

  QAUsecase(this.qaRepo);

  Future<Either<Failure, QAModel>> getQA() async => qaRepo.getQA();
}
