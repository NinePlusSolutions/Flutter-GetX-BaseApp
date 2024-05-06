import 'package:freezed_annotation/freezed_annotation.dart';

import '../get_all_point/get_all_point_item.dart';

part 'get_earn_deduct_point_response.g.dart';

@JsonSerializable()
class GetEarnDeductPointResponse {
  final List<GetAllPointItem> data;
  final int? totalPages;

  GetEarnDeductPointResponse({required this.data, this.totalPages});

  factory GetEarnDeductPointResponse.fromJson(Map<String, dynamic> json) =>
      _$GetEarnDeductPointResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetEarnDeductPointResponseToJson(this);
}
