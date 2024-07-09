// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SearchResp _$SearchRespFromJson(Map<String, dynamic> json) => SearchResp(
      results: (json['results'] as List<dynamic>?)
              ?.map((e) => SearchResultData.fromJson(e as Map<String, dynamic>))
              .toList() ??
          const [],
    );

Map<String, dynamic> _$SearchRespToJson(SearchResp instance) =>
    <String, dynamic>{
      'results': instance.results,
    };

SearchResultData _$SearchResultDataFromJson(Map<String, dynamic> json) =>
    SearchResultData(
      id: (json['id'] as num).toInt(),
      originalTitle: json['originalTitle'] as String,
      posterPath: json['posterPath'] as String?,
    );

Map<String, dynamic> _$SearchResultDataToJson(SearchResultData instance) =>
    <String, dynamic>{
      'id': instance.id,
      'originalTitle': instance.originalTitle,
      'posterPath': instance.posterPath,
    };
