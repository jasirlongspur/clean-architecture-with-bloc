import 'package:freezed_annotation/freezed_annotation.dart';
part 'search.g.dart';

@JsonSerializable()
class SearchResp {
  @JsonKey(name: "results")
  List<SearchResultData> results;
  SearchResp({this.results = const []});

  factory SearchResp.fromJson(Map<String, dynamic> json) =>
      _$SearchRespFromJson(json);

  Map<String, dynamic> toJson() => _$SearchRespToJson(this);
}

@JsonSerializable()
class SearchResultData {
  int id;

  String originalTitle;

  String? posterPath;

  SearchResultData({
    required this.id,
    required this.originalTitle,
    required this.posterPath,
  });

  factory SearchResultData.fromJson(Map<String, dynamic> json) =>
      _$SearchResultDataFromJson(json);
  Map<String, dynamic> toJson() => _$SearchResultDataToJson(this);
}
