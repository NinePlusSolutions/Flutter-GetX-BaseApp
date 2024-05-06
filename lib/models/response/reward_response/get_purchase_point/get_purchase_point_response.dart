import 'package:freezed_annotation/freezed_annotation.dart';

import '../get_all_point/get_all_point_item.dart';

part 'get_purchase_point_response.g.dart';

@JsonSerializable()
class GetPurchasePointResponse {
  final List<GetAllPointItem> data;
  final int? totalPages;

  GetPurchasePointResponse({required this.data, this.totalPages});

  factory GetPurchasePointResponse.fromJson(Map<String, dynamic> json) =>
      _$GetPurchasePointResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetPurchasePointResponseToJson(this);
}
