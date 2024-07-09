import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:injectable/injectable.dart';
import 'package:sample_project/domain/core/failures/main_failures.dart';
import 'package:sample_project/domain/downloads/i_downloads_repo.dart';
import 'package:sample_project/domain/downloads/model/downloads.dart';

part 'download_event.dart';
part 'download_state.dart';
part 'download_bloc.freezed.dart';

@Injectable()
class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  IDownloadsRepo _downloadsRepo;
  DownloadBloc(this._downloadsRepo) : super(DownloadState.initial()) {
    on<_GetDownloadsImage>((event, emit) async {
      emit(state.copyWith(
          isLoading: true, downloadsFailureOrSuccessOption: none()));
      final Either<MainFailures, List<Downloads>> downloadsOption =
          await _downloadsRepo.getDownloadsImages();
      log("downloadOption $downloadsOption");
      emit(
        downloadsOption.fold(
          (failure) => state.copyWith(
              isLoading: false,
              downloadsFailureOrSuccessOption: some(left(failure))),
          (success) => state.copyWith(
              isLoading: false,
              downloads: success,
              downloadsFailureOrSuccessOption: some(right(success))),
        ),
      );
    });
  }
}
