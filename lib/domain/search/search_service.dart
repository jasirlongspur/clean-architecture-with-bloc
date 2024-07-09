import 'package:dartz/dartz.dart';
import 'package:sample_project/domain/core/failures/main_failures.dart';
import 'package:sample_project/domain/search/model/search.dart';

abstract class SearchService {
  Future<Either<MainFailures, SearchResp>> searchMovies(
      {required String movieQuery});
}
