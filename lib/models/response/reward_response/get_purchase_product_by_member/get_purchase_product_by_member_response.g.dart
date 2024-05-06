// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'get_purchase_product_by_member_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

GetPurchaseProductByMemberResponse _$GetPurchaseProductByMemberResponseFromJson(
        Map<String, dynamic> json) =>
    GetPurchaseProductByMemberResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) =>
              PurchaseProductByMemberItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$GetPurchaseProductByMemberResponseToJson(
        GetPurchaseProductByMemberResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
