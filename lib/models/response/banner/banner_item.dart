import 'package:freezed_annotation/freezed_annotation.dart';

part 'banner_item.g.dart';

@JsonSerializable()
class BannerItem {
  final int id;
  final String title;
  final String imageUrl;
  final String targetUrl;
  final String description;
  final DateTime startDate;
  final DateTime endDate;
  final bool isActive;
  final int positions;
  final int priority;

  BannerItem(this.description, {
    required this.id,
    required this.title,
    required this.imageUrl,
    required this.targetUrl,
    required this.startDate,
    required this.endDate,
    required this.isActive,
    required this.positions,
    required this.priority,
  });

  factory BannerItem.fromJson(Map<String, dynamic> json) =>
      _$BannerItemFromJson(json);

  Map<String, dynamic> toJson() => _$BannerItemToJson(this);
}
