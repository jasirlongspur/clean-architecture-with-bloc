import 'package:dartz/dartz.dart';
import 'package:sample_project/domain/core/failures/main_failures.dart';
import 'package:sample_project/domain/downloads/model/downloads.dart';

abstract class IDownloadsRepo {
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages();
}
