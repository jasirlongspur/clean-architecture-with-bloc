part of 'download_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState({
    required bool isLoading,
    List<Downloads>? downloads,
    required Option<Either<MainFailures, List<Downloads>>>
        downloadsFailureOrSuccessOption,
  }) = _DownloadState;

  factory DownloadState.initial() {
    return const DownloadState(
        isLoading: false, downloadsFailureOrSuccessOption: None());
  }
}
