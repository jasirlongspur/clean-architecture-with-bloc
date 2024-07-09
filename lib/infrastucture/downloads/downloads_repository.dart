import 'dart:developer';

import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_project/domain/core/api_end_points.dart';
import 'package:sample_project/domain/core/failures/main_failures.dart';
import 'package:sample_project/domain/downloads/i_downloads_repo.dart';
import 'package:sample_project/domain/downloads/model/downloads.dart';
import 'package:dio/dio.dart';

@LazySingleton(as: IDownloadsRepo)
class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final downloadList = (response.data["results"] as List)
            .map(
              (e) => Downloads.fromJson(e),
            )
            .toList();

        return right(downloadList);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (e) {
      log(e.toString());
      return left(const MainFailures.clientFailure());
    }
  }
}
