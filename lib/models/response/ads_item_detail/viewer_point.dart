import 'package:freezed_annotation/freezed_annotation.dart';

part 'viewer_point.g.dart';

@JsonSerializable()
class ViewerPoint {
  final double viewersRegularMemberPoint;
  final double viewersVipMemberPoint;
  final double viewersAffiliateMemberPoint;

  ViewerPoint({
    required this.viewersRegularMemberPoint,
    required this.viewersVipMemberPoint,
    required this.viewersAffiliateMemberPoint,
   
  });
  factory ViewerPoint.fromJson(Map<String, dynamic> json) =>
      _$ViewerPointFromJson(json);

  Map<String, dynamic> toJson() => _$ViewerPointToJson(this);
}
