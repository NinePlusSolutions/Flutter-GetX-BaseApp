// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'inquiry_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

InquiryItem _$InquiryItemFromJson(Map<String, dynamic> json) => InquiryItem(
      id: json['id'] as int,
      memberId: json['memberId'] as int,
      question: json['question'] as String,
      answer: json['answer'],
      isRead: json['isRead'] as bool,
      userAnswerId: json['userAnswerId'],
      userAnswerName: json['userAnswerName'] as String,
      createdOn: DateTime.parse(json['createdOn'] as String),
    );

Map<String, dynamic> _$InquiryItemToJson(InquiryItem instance) =>
    <String, dynamic>{
      'id': instance.id,
      'memberId': instance.memberId,
      'question': instance.question,
      'answer': instance.answer,
      'isRead': instance.isRead,
      'userAnswerId': instance.userAnswerId,
      'userAnswerName': instance.userAnswerName,
      'createdOn': instance.createdOn.toIso8601String(),
    };
