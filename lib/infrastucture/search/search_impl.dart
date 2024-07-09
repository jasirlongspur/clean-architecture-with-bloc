import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:dio/dio.dart';
import 'package:sample_project/domain/core/api_end_points.dart';
import 'package:sample_project/domain/core/failures/main_failures.dart';
import 'package:sample_project/domain/search/model/search.dart';
import 'package:sample_project/domain/search/search_service.dart';

class SearchImpl implements SearchService {
  @override
  Future<Either<MainFailures, SearchResp>> searchMovies(
      {required String movieQuery}) async {
    try {
      final Response response =
          await Dio(BaseOptions(queryParameters: {"query": movieQuery}))
              .get(ApiEndPoints.search);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final result = SearchResp.fromJson(response.data);
        return right(result);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailures.clientFailure());
    }
  }
}
