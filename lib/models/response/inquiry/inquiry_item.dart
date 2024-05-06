import 'package:freezed_annotation/freezed_annotation.dart';

part 'inquiry_item.g.dart';

@JsonSerializable()
class InquiryItem {
  final int id;
  final int memberId;
  final String question;
  final dynamic answer;
  final bool isRead;
  final dynamic userAnswerId;
  final String userAnswerName;
  final DateTime createdOn;

  InquiryItem({
    required this.id,
    required this.memberId,
    required this.question,
    required this.answer,
    required this.isRead,
    required this.userAnswerId,
    required this.userAnswerName,
    required this.createdOn,
  });

  factory InquiryItem.fromJson(Map<String, dynamic> json) =>
      _$InquiryItemFromJson(json);

  Map<String, dynamic> toJson() => _$InquiryItemToJson(this);
}
