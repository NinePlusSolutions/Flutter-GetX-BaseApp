import 'package:json_annotation/json_annotation.dart';

part 'inquiry_request.g.dart';

@JsonSerializable()
class InquiryRequest {
  InquiryRequest({
    required this.question,
  });

  String question;

  factory InquiryRequest.fromJson(Map<String, dynamic> json) =>
      _$InquiryRequestFromJson(json);

  Map<String, dynamic> toJson() => _$InquiryRequestToJson(this);
}
