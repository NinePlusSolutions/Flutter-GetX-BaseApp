import 'package:freezed_annotation/freezed_annotation.dart';

import '../get_all_point/get_all_point_item.dart';

part 'get_attendance_point_response.g.dart';

@JsonSerializable()
class GetAttendancePointResponse {
  final List<GetAllPointItem> data;
  final int? totalPages;

  GetAttendancePointResponse({required this.data, this.totalPages});

  factory GetAttendancePointResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAttendancePointResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAttendancePointResponseToJson(this);
}
