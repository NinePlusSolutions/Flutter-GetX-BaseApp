import 'package:freezed_annotation/freezed_annotation.dart';

import 'banner_item.dart';

part 'banner_response.g.dart';

@JsonSerializable()
class BannerResponse {
  final List<BannerItem> data;

  BannerResponse({required this.data});

  factory BannerResponse.fromJson(Map<String, dynamic> json) =>
      _$BannerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$BannerResponseToJson(this);
}