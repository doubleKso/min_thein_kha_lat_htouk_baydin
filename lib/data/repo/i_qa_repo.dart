import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:lat_htauk_bay_din/core/failures/failures.dart';
import 'package:lat_htauk_bay_din/data/data.dart';
import 'package:lat_htauk_bay_din/domain/domain.dart';

@Injectable(as: QARepo)
class IQARepo implements QARepo {
  final JsonReader reader;

  IQARepo(this.reader);

  @override
  Future<Either<Failure, QAModel>> getQA() async {
    try {
      print("IQA Repo work");
      final data = await reader.readJson();
      return Right(data);
    } catch (e) {
      return Left(LogicFailure(e: e.toString()));
    }
  }
}
