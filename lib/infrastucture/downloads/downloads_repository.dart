import 'package:dartz/dartz.dart';
import 'package:sample_project/domain/core/api_end_points.dart';
import 'package:sample_project/domain/core/failures/main_failures.dart';
import 'package:sample_project/domain/downloads/i_downloads_repo.dart';
import 'package:sample_project/domain/downloads/model/downloads.dart';
import 'package:dio/dio.dart';

class DownloadsRepository implements IDownloadsRepo {
  @override
  Future<Either<MainFailures, List<Downloads>>> getDownloadsImages() async {
    try {
      final response = await Dio(BaseOptions()).get(ApiEndPoints.downloads);
      if (response.statusCode == 200 || response.statusCode == 201) {
        final List<Downloads> downloadList = [];
        for (final raw in response.data) {
          downloadList.add(Downloads.fromJson(raw as Map<String, dynamic>));
        }
        return right(downloadList);
      } else {
        return left(const MainFailures.serverFailure());
      }
    } catch (_) {
      return left(const MainFailures.clientFailure());
    }
  }
}
