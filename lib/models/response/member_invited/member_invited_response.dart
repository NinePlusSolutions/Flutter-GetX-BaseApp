import 'package:WooPeople/models/response/member_invited/member_invited_item.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'member_invited_response.g.dart';

@JsonSerializable()
class MemberInvitedResponse {
  final List<MemberInvitedItem> data;
  final int totalPages;
  MemberInvitedResponse({required this.data, required this.totalPages});

  factory MemberInvitedResponse.fromJson(Map<String, dynamic> json) =>
      _$MemberInvitedResponseFromJson(json);

  Map<String, dynamic> toJson() => _$MemberInvitedResponseToJson(this);
}
