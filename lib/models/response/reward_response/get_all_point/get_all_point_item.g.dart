// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_all_point_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetAllPointItem _$GetAllPointItemFromJson(Map<String, dynamic> json) =>
    GetAllPointItem(
      memberId: json['memberId'] as int,
      memberName: json['memberName'] as String,
      receiveDate: json['receiveDate'] as String,
      point: json['point'] as int,
      pointType: json['pointType'] as int,
      edType: json['edType'] as int,
    );

Map<String, dynamic> _$GetAllPointItemToJson(GetAllPointItem instance) =>
    <String, dynamic>{
      'memberId': instance.memberId,
      'memberName': instance.memberName,
      'receiveDate': instance.receiveDate,
      'point': instance.point,
      'pointType': instance.pointType,
      'edType': instance.edType,
    };
