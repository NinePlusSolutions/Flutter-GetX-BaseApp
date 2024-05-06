// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_item.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

NewsItem _$NewsItemFromJson(Map<String, dynamic> json) => NewsItem(
      id: json['id'] as int,
      title: json['title'] as String,
      content: json['content'] as String,
      imageUrlLink: json['imageUrlLink'] as String,
      newsCategoryName: json['newsCategoryName'] as String,
      brief: json['brief'] as String,
      sourceUrl: json['sourceUrl'] as String,
    );

Map<String, dynamic> _$NewsItemToJson(NewsItem instance) => <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'imageUrlLink': instance.imageUrlLink,
      'newsCategoryName': instance.newsCategoryName,
      'brief': instance.brief,
      'sourceUrl': instance.sourceUrl,
    };
