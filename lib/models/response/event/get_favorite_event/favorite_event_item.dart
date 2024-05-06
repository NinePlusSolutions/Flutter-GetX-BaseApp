import 'package:json_annotation/json_annotation.dart';

part 'favorite_event_item.g.dart';

@JsonSerializable()
class FavoriteEventItem {
  int? eventId;
  String? name;
  String? description;
  String? location;
  String? startDate;
  String? endDate;
  String? organizer;
  String? capacity;
  String? contactEmail;
  String? contactPhone;
  bool isActive;
  int? priority;
  String? createdOn;
  String? image;
  String? imageLink;
  int? invitation;
  int? userLimit;
  int? status;
  String? imageHomeLink;
  String? eventStartDate;
  String? eventEndDate;

  FavoriteEventItem({
    required this.name,
    required this.description,
    required this.location,
    required this.startDate,
    required this.endDate,
    required this.organizer,
    required this.capacity,
    required this.contactEmail,
    required this.contactPhone,
    required this.isActive,
    required this.createdOn,
    required this.image,
    required this.imageLink,
    required this.invitation,
    required this.userLimit,
    required this.status,
    required this.eventId,
    required this.imageHomeLink,
    required this.priority,
    required this.eventEndDate,
    required this.eventStartDate,
  });

  factory FavoriteEventItem.fromJson(Map<String, dynamic> json) =>
      _$FavoriteEventItemFromJson(json);
  Map<String, dynamic> toJson() => _$FavoriteEventItemToJson(this);
}
