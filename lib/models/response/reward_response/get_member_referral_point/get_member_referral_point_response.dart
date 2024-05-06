import 'package:freezed_annotation/freezed_annotation.dart';

import '../get_all_point/get_all_point_item.dart';

part 'get_member_referral_point_response.g.dart';

@JsonSerializable()
class GetMemberReferallPointResponse {
  final List<GetAllPointItem> data;
  final int? totalPages;

  GetMemberReferallPointResponse({required this.data, this.totalPages});

  factory GetMemberReferallPointResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMemberReferallPointResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetMemberReferallPointResponseToJson(this);
}
