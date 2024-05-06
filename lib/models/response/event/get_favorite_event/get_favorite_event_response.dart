import 'package:freezed_annotation/freezed_annotation.dart';

import 'favorite_event_item.dart';

part 'get_favorite_event_response.g.dart';

@JsonSerializable()
class GetFavoriteEventResponse {
  final List<FavoriteEventItem> data;

  GetFavoriteEventResponse({required this.data});

  factory GetFavoriteEventResponse.fromJson(Map<String, dynamic> json) =>
      _$GetFavoriteEventResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetFavoriteEventResponseToJson(this);
}