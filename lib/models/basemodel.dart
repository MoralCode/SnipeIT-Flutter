import 'package:json_annotation/json_annotation.dart';

import 'datetime.dart';

part 'basemodel.g.dart';

@JsonSerializable()
class BaseModel {
  final int id;
  String name;

  BaseModel(this.id, this.name);

  /// Connect the generated [_$BaseModelFromJson] function to the `fromJson`
  /// factory.
  factory BaseModel.fromJson(Map<String, dynamic> json) =>
      _$BaseModelFromJson(json);

  /// Connect the generated [_$BaseModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$BaseModelToJson(this);
}

@JsonSerializable()
class TimestampedBaseModel extends BaseModel {
  SnipeDateTime created_at, updated_at;

  TimestampedBaseModel(int id, String name,
      {required this.created_at, required this.updated_at})
      : super(id, name);

  /// Connect the generated [_$BaseModelFromJson] function to the `fromJson`
  /// factory.
  factory TimestampedBaseModel.fromJson(Map<String, dynamic> json) =>
      _$TimestampedBaseModelFromJson(json);

  /// Connect the generated [_$TimestampedBaseModelToJson] function to the `toJson` method.
  Map<String, dynamic> toJson() => _$TimestampedBaseModelToJson(this);
}
