// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inquiry_response.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InquiryResponse _$InquiryResponseFromJson(Map<String, dynamic> json) =>
    InquiryResponse(
      data: (json['data'] as List<dynamic>)
          .map((e) => InquiryItem.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$InquiryResponseToJson(InquiryResponse instance) =>
    <String, dynamic>{
      'data': instance.data,
    };
