import 'package:WooPeople/models/response/ads_item_detail/ads_item_detail.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_item_detail_response.g.dart';

@JsonSerializable()
class AdsItemDetailResponse {
  final List<AdsItemDetail> data;

  AdsItemDetailResponse({required this.data});

  factory AdsItemDetailResponse.fromJson(Map<String, dynamic> json) =>
      _$AdsItemDetailResponseFromJson(json);

  Map<String, dynamic> toJson() => _$AdsItemDetailResponseToJson(this);
}
