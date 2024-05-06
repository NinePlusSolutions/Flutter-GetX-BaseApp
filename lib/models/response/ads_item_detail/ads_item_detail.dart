import 'package:WooPeople/models/response/ads_item_detail/viewer_point.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'ads_item_detail.g.dart';

@JsonSerializable()
class AdsItemDetail {
  final int id;
  final String title;
  final String description;
  final String url;
  final String urlLink;
  final String thumbnailUrl;
  final String thumbnailUrlLink;
  final dynamic duration;
  final int typeAds;
  final int typeUrlVideo;
  final int status;
  final String qrCodePartner;
  final List<dynamic> targetAudiences;
  final String createdOn;
  final String createdBy;
  final ViewerPoint viewerPoint;

  AdsItemDetail(
      {required this.id,
      required this.title,
      required this.description,
      required this.url,
      required this.thumbnailUrl,
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
      required this.viewerPoint});

  factory AdsItemDetail.fromJson(Map<String, dynamic> json) =>
      _$AdsItemDetailFromJson(json);

  Map<String, dynamic> toJson() => _$AdsItemDetailToJson(this);
}
