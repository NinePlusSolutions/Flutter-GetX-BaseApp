import 'package:freezed_annotation/freezed_annotation.dart';

import '../get_all_point/get_all_point_item.dart';

part 'get_merit_reward_response.g.dart';

@JsonSerializable()
class GetMeritRewardResponse {
  final List<GetAllPointItem> data;
  final int? totalPages;

  GetMeritRewardResponse({
    required this.data,
    this.totalPages,
  });

  factory GetMeritRewardResponse.fromJson(Map<String, dynamic> json) =>
      _$GetMeritRewardResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetMeritRewardResponseToJson(this);
}
