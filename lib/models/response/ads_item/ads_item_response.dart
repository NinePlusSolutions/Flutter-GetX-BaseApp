import 'package:WooPeople/models/response/ads_item/ads_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_item_response.g.dart';

@JsonSerializable()
class AdsItemResponse {
  final List<AdsItem> data;

  AdsItemResponse({required this.data});

  factory AdsItemResponse.fromJson(Map<String, dynamic> json) =>
      _$AdsItemResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdsItemResponseToJson(this);
}
