import 'package:WooPeople/models/response/inquiry/inquiry_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';


part 'inquiry_response.g.dart';

@JsonSerializable()
class InquiryResponse {
  final List<InquiryItem> data;

  InquiryResponse({required this.data});

  factory InquiryResponse.fromJson(Map<String, dynamic> json) =>
      _$InquiryResponseFromJson(json);

  Map<String, dynamic> toJson() => _$InquiryResponseToJson(this);
}