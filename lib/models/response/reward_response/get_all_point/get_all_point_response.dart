import 'package:freezed_annotation/freezed_annotation.dart';

import 'get_all_point_item.dart';

part 'get_all_point_response.g.dart';

@JsonSerializable()
class GetAllPointResponse {
  final List<GetAllPointItem> data;
  final int? totalPages;

  GetAllPointResponse( {required this.data,this.totalPages});

  factory GetAllPointResponse.fromJson(Map<String, dynamic> json) =>
      _$GetAllPointResponseFromJson(json);

  Map<String, dynamic> toJson() => _$GetAllPointResponseToJson(this);
}
