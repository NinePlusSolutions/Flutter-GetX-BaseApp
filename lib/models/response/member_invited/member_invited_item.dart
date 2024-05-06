import 'package:json_annotation/json_annotation.dart';

part 'member_invited_item.g.dart';

@JsonSerializable()
class MemberInvitedItem {
  int id;
  String name;
  String email;
  String phoneNumber;
  String referralCode;
  int pointReferral;
  String createdOn;

  MemberInvitedItem({
  required this.id,
  required this.name,
  required this.email,
  required this.phoneNumber,
  required this.referralCode,
  required this.pointReferral,
  required this.createdOn,
  });

  factory MemberInvitedItem.fromJson(Map<String, dynamic> json) =>
      _$MemberInvitedItemFromJson(json);
  Map<String, dynamic> toJson() => _$MemberInvitedItemToJson(this);
}
