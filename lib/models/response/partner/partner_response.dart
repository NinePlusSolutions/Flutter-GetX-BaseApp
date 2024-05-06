import 'package:freezed_annotation/freezed_annotation.dart';

import 'partner_item.dart';

part 'partner_response.g.dart';

@JsonSerializable()
class PartnerResponse {
  final List<PartnerItem> data;

  PartnerResponse({required this.data});

  factory PartnerResponse.fromJson(Map<String, dynamic> json) =>
      _$PartnerResponseFromJson(json);

  Map<String, dynamic> toJson() => _$PartnerResponseToJson(this);
}
