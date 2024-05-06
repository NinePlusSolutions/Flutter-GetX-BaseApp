// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_product_by_member_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

PurchaseProductByMemberItem _$PurchaseProductByMemberItemFromJson(
        Map<String, dynamic> json) =>
    PurchaseProductByMemberItem(
      id: json['id'] as int,
      pointShopId: json['pointShopId'] as int,
      pointShopName: json['pointShopName'] as String,
      memberId: json['memberId'] as int,
      memberLastName: json['memberLastName'] as String,
      memberFirstName: json['memberFirstName'] as String,
      pointsUsed: json['pointsUsed'] as int,
      claimedAt: json['claimedAt'] as String,
      location: json['location'],
      status: json['status'] as int,
      createdOn: json['createdOn'] as String,
      imageProduct: json['imageProduct'] as String,
    );

Map<String, dynamic> _$PurchaseProductByMemberItemToJson(
        PurchaseProductByMemberItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'pointShopId': instance.pointShopId,
      'pointShopName': instance.pointShopName,
      'memberId': instance.memberId,
      'memberLastName': instance.memberLastName,
      'memberFirstName': instance.memberFirstName,
      'pointsUsed': instance.pointsUsed,
      'claimedAt': instance.claimedAt,
      'location': instance.location,
      'status': instance.status,
      'createdOn': instance.createdOn,
      'imageProduct': instance.imageProduct,
    };
