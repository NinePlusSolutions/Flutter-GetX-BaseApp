// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'viewer_point.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ViewerPoint _$ViewerPointFromJson(Map<String, dynamic> json) => ViewerPoint(
      viewersRegularMemberPoint:
          (json['viewersRegularMemberPoint'] as num).toDouble(),
      viewersVipMemberPoint: (json['viewersVipMemberPoint'] as num).toDouble(),
      viewersAffiliateMemberPoint:
          (json['viewersAffiliateMemberPoint'] as num).toDouble(),
    );

Map<String, dynamic> _$ViewerPointToJson(ViewerPoint instance) =>
    <String, dynamic>{
      'viewersRegularMemberPoint': instance.viewersRegularMemberPoint,
      'viewersVipMemberPoint': instance.viewersVipMemberPoint,
      'viewersAffiliateMemberPoint': instance.viewersAffiliateMemberPoint,
    };
