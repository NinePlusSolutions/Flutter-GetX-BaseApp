import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_item.g.dart';

@JsonSerializable()
class AdsItem {
  final int id;
  final String title;
  final String description;
  final String url;
  final String targetUrl;
  final String imageUrl;
  final String urlLink;
  final String thumbnailUrlLink;
  final int duration;
  final int typeAds;
  final int typeUrlVideo;
  final int status;
  final String qrCodePartner;
  final List<String> targetAudiences;
  final String createdOn;
  final String createdBy;

  AdsItem({
    required this.id,
    required this.title,
    required this.description,
    required this.url,
    required this.targetUrl,
    required this.imageUrl,
    required this.urlLink,
    required this.thumbnailUrlLink,
    required this.duration,
    required this.typeAds,
    required this.typeUrlVideo,
    required this.status,
    required this.qrCodePartner,
    required this.targetAudiences,
    required this.createdOn,
    required this.createdBy,
  });

  factory AdsItem.fromJson(Map<String, dynamic> json) =>
      _$AdsItemFromJson(json);

  Map<String, dynamic> toJson() => _$AdsItemToJson(this);
}
