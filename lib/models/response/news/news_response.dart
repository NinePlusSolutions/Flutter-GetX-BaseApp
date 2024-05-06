import 'package:WooPeople/models/response/news/news_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'news_response.g.dart';

@JsonSerializable()
class NewsResponse {
  final List<NewsItem> data;
  final int? totalPages;

  NewsResponse({required this.data, this.totalPages});

  factory NewsResponse.fromJson(Map<String, dynamic> json) =>
      _$NewsResponseFromJson(json);

  Map<String, dynamic> toJson() => _$NewsResponseToJson(this);
}
