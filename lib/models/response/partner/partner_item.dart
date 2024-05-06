import 'package:freezed_annotation/freezed_annotation.dart';

part 'partner_item.g.dart';

@JsonSerializable()
class PartnerItem {
  final int id;
  final String? name;
  final String? urlLogo;
  final String? urlLogoLink;
  final dynamic urlImage;
  final String? urlImageLink;
  final String? qrCode;
  final dynamic countAds;
  final String? createdOn;

  PartnerItem(
      {required this.id,
      required this.name,
      required this.urlLogo,
      required this.urlLogoLink,
      required this.urlImage,
      required this.urlImageLink,
      required this.qrCode,
      required this.createdOn,
      required this.countAds});

  factory PartnerItem.fromJson(Map<String, dynamic> json) =>
      _$PartnerItemFromJson(json);

  Map<String, dynamic> toJson() => _$PartnerItemToJson(this);
}
