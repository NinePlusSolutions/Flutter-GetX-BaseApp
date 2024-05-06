import 'package:freezed_annotation/freezed_annotation.dart';

import '../get_all_point/get_all_point_item.dart';

part 'get_ads_consumption_point_response.g.dart';

@JsonSerializable()
class GetAdsConsumptionPointResponse {
  final List<GetAllPointItem> data;
  final int? totalPages;

  GetAdsConsumptionPointResponse({
    required this.data,
    this.totalPages,
  });

  factory GetAdsConsumptionPointResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAdsConsumptionPointResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAdsConsumptionPointResponseToJson(this);
}
