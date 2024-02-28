import 'package:dartz/dartz.dart';
import 'package:lat_htauk_bay_din/core/core.dart';
import 'package:lat_htauk_bay_din/data/data.dart';

abstract class QARepo {
  Future<Either<Failure, QAModel>> getQA();
}
