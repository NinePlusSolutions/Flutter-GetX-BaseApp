import 'package:freezed_annotation/freezed_annotation.dart';

import '../get_all_point/get_all_point_item.dart';

part 'get_ads_task_point_response.g.dart';

@JsonSerializable()
class GetAdsTaskPointResponse {
  final List<GetAllPointItem> data;
  final int? totalPages;

  GetAdsTaskPointResponse({required this.data, this.totalPages});

  factory GetAdsTaskPointResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAdsTaskPointResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAdsTaskPointResponseToJson(this);
}
