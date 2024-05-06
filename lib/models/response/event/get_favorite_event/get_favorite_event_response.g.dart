// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_favorite_event_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetFavoriteEventResponse _$GetFavoriteEventResponseFromJson(
        Map<String, dynamic> json) =>
    GetFavoriteEventResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => FavoriteEventItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetFavoriteEventResponseToJson(
        GetFavoriteEventResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
