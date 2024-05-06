import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_item.g.dart';

@JsonSerializable()
class NewsItem {
  final int id;
  final String title;
  final String content;
  final String imageUrlLink;
  final String newsCategoryName;
  final String brief;
  final String sourceUrl;

  NewsItem({
    required this.id,
    required this.title,
    required this.content,
    required this.imageUrlLink,
    required this.newsCategoryName,
    required this.brief,
    required this.sourceUrl,
  });

  factory NewsItem.fromJson(Map<String, dynamic> json) =>
      _$NewsItemFromJson(json);

  Map<String, dynamic> toJson() => _$NewsItemToJson(this);
}
